import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:zagruzka_ekrana/features/auth/domain/usecase/sign_out_usecase.dart';
import 'package:zagruzka_ekrana/features/auth/domain/usecase/sign_up_usecase.dart';
import 'package:zagruzka_ekrana/features/auth/presentation/auth_view_model/email_text_form_view_model.dart';
import 'package:zagruzka_ekrana/features/auth/presentation/auth_view_model/password_repeat_text_form_view_model.dart';
import 'package:zagruzka_ekrana/features/auth/presentation/auth_view_model/password_text_form_view_model.dart';

part 'register_page_bloc.freezed.dart';

part 'register_page_event.dart';

part 'register_page_state.dart';

typedef StateEmitter = Emitter<RegisterPageState>;

class RegisterPageBloc extends Bloc<RegisterPageEvent, RegisterPageState> {
  RegisterPageBloc({required SignUpUsecase creatSignUpUsecase})
      : _signUpUsecase = creatSignUpUsecase,
        super(const RegisterPageState()) {
    on<RegisterPageEvent>(_handleEvents, transformer: _debounceEvent);
  }

  Future<void> _handleEvents(
      RegisterPageEvent event, Emitter<RegisterPageState> emit) async {
    await event.when(
      editEmail: (email) => _onEditEmail(email, emit),
      editPassword: (password) => _onPasswordEdit(password, emit),
      editConfirmationPassword: (password) =>
          _onEditConfirmationPassword(password, emit),
      togglePasswordObscure: () {
        final viewModel = state.passwordTextFormViewModel;
        final newState = state.copyWith(
            passwordTextFormViewModel:
                viewModel.copyWith(isObscured: !viewModel.isObscured));
        emit(newState);
      },
      toggleConfirmationPasswordObscure: () {
        final viewModel = state.passwordRepeatTextFormViewModel;
        emit(state.copyWith(
            passwordRepeatTextFormViewModel:
                viewModel.copyWith(isObscured: !viewModel.isObscured)));
      },
      sendData: () async {
        await _submit(emit);
      },
      clearErrors: () {
        emit(state.copyWith(message: '', status: RegistrationStatus.none));
      },
    );
  }

  final SignUpUsecase _signUpUsecase;

  Future<void> _submit(Emitter<RegisterPageState> emit) async {
    emit(state.copyWith(status: RegistrationStatus.loading));
    //проверка на идентичность поролей
    final bool identificalPassword = checkPasswordsIndentify(emit);
    final validEmail = isEmailValid(emit);
    final strongPassword = isPasswordStrongEnough(emit);

    print('**************************************');
    print(
        'identificalPassword:$identificalPassword\nvalidEmail:$validEmail\nstrongPassword:$strongPassword');
    print('**************************************');

    //проверка емейла и валидация пароля
    final bool isAllDataIsvalid =
        strongPassword && validEmail && identificalPassword;

    if (!isAllDataIsvalid) {
      emit(state.copyWith(
        status: RegistrationStatus.failure,
        message: 'happened on front side',
      ));
      return;
    }
    final result = await _signUpUsecase.call(
        email: state.emailTextFormViewModel.value,
        password: state.passwordTextFormViewModel.value);

    if (result == null) {
      emit(state.copyWith(
          status: RegistrationStatus.failure,
          message: 'happened on server side'));
      return;
    }

    emit(state.copyWith(
        status: RegistrationStatus.succeed, message: 'Congratulations'));
  }

  Future<void> _onEditEmail(String email, StateEmitter emit) async {
    final newEmailTextViewModel =
        state.emailTextFormViewModel.copyWith(value: email);

    emit(state.copyWith(emailTextFormViewModel: newEmailTextViewModel));
  }

  Future<void> _onPasswordEdit(String password, StateEmitter emit) async {
    final passVm = state.passwordTextFormViewModel.copyWith(value: password);
    emit(state.copyWith(passwordTextFormViewModel: passVm));
  }

  Future<void> _onEditConfirmationPassword(
      String password, StateEmitter emit) async {
    final viewModel = state.passwordRepeatTextFormViewModel.copyWith(
      value: password,
    );

    emit(state.copyWith(passwordRepeatTextFormViewModel: viewModel));
  }

  //vtorostepennye
  bool isPasswordStrongEnough(Emitter<RegisterPageState> emit) {
    final passwordRegex = RegExp(r'^(?=.*?[A-Z])(?=.*?[0-9]).{6,}$');
    final isValid =
        passwordRegex.hasMatch(state.passwordTextFormViewModel.value);

    if (!isValid) {
      final passsVm = state.passwordTextFormViewModel.copyWith(
        isValid: isValid,
        errorMessage: 'Пороли не соответствуют требоавниям',
      );
      emit(state.copyWith(passwordTextFormViewModel: passsVm));
    }
    return isValid;
  }

  bool checkPasswordsIndentify(Emitter<RegisterPageState> emit) {
    final isValid = state.passwordTextFormViewModel.value ==
        state.passwordRepeatTextFormViewModel.value;
    if (!isValid) {
      final passVm = state.passwordTextFormViewModel.copyWith(
        isValid: isValid,
        errorMessage: 'Пороли не совподают',
      );
      emit(state.copyWith(passwordTextFormViewModel: passVm));
    }
    return isValid;
  }

  ///***///

  bool isEmailValid(Emitter<RegisterPageState> emit) {
    final emailRegex = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&**-/=?^_'{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    final isValid = emailRegex.hasMatch(state.emailTextFormViewModel.value);
    print('is email valid: $isValid');

    String errorMessage = '';
    if (!isValid) {
      errorMessage = 'Неправильный Email';
    }
    emit(state.copyWith(
        emailTextFormViewModel: state.emailTextFormViewModel.copyWith(
      isValid: isValid,
      errorMessage: errorMessage,
    )));

    return isValid;
  }

  Stream<T> _debounceEvent<T extends RegisterPageEvent>(
      Stream<T> stream, Stream<T> Function(T) streamFn) {
    final event = stream.takeLast(1);
    final isDebounceRequiredEvent = event is EditEmailEvent ||
        event is EditPasswordEvent ||
        event is EditConfirmationPasswordEvent ||
        event is SendDataEvent;
    if (isDebounceRequiredEvent) {
      return stream
          .debounceTime(const Duration(milliseconds: 500))
          .asyncExpand(streamFn);
    }

    return stream.asyncExpand(streamFn);
  }
}
