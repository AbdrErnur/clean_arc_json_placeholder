import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:zagruzka_ekrana/features/auth/domain/usecase/confirm_password_reset_uscase.dart';
import 'package:zagruzka_ekrana/features/auth/domain/usecase/send_password_request_email_usecase.dart';
import 'package:zagruzka_ekrana/features/auth/presentation/auth_view_model/email_text_form_view_model.dart';
import 'package:zagruzka_ekrana/features/auth/presentation/auth_view_model/password_repeat_text_form_view_model.dart';
import 'package:zagruzka_ekrana/features/auth/presentation/auth_view_model/password_text_form_view_model.dart';

part 'reset_password_page_event.dart';

part 'reset_password_page_state.dart';

part 'reset_password_page_bloc.freezed.dart';

typedef StateEmitter = Emitter<ResetPasswordPageState>;

class ResetPasswordPageBloc
    extends Bloc<ResetPasswordPageEvent, ResetPasswordPageState> {
  ResetPasswordPageBloc({
    required SendPasswordRequestEmailUseCase sendPasswordRequestEmailUseCase,
    // required ConfirmPasswordResetUseCase createConfirmPasswordResetUseCase
  })  : _sendPasswordRequestEmailUseCase = sendPasswordRequestEmailUseCase,
        // _createConfirmPasswordResetUseCase = createConfirmPasswordResetUseCase,
        super(ResetPasswordPageState()) {
    on<ResetPasswordPageEvent>(_handleEvents, transformer: _debounceEvent);
  }

  final SendPasswordRequestEmailUseCase _sendPasswordRequestEmailUseCase;

  // final ConfirmPasswordResetUseCase _createConfirmPasswordResetUseCase;

  Future<void> _handleEvents(
      ResetPasswordPageEvent event, StateEmitter emit) async {
    await event.when(
      editEmail: (email) => _onEditEmail(email, emit),
      editPassword: (password) {},
      editConfirmationPassword: (password) {},
      togglePasswordObscure: () {},
      toggleConfirmationPasswordObscure: () {},
      sendEmail: () async {
        emit(state.copyWith(status: ResetStatus.loading));
        final result = await _submit();
        emit(result);
      },
      sendCodeAndPassword: () {},
      clearErrors: () {
        emit(state.copyWith(message: '', status: ResetStatus.none));
      },
    );
  }

  Future<ResetPasswordPageState> _submit() async {
    if (!state.emailTextFormViewModel.isValid) {
      return state.copyWith(
        status: ResetStatus.failure,
        message: 'happened on front side',
      );
    }
    final result = await _sendPasswordRequestEmailUseCase.call(
        email: state.emailTextFormViewModel.value);

    return result.fold(
      (left) => state.copyWith(
          status: ResetStatus.failure,
          message: '${left.message}: ${left.errorCode}'),
      (right) => state.copyWith(
          status: ResetStatus.emailSent, message: 'Congratulations'),
    );
  }

  Future<void> _onEditEmail(String email, StateEmitter emit) async {
    final isValid = _isEmailValid(emit);

    String errorMessage = '';

    if (!isValid) {
      errorMessage = 'Неправильный формат почты';
    }

    final emailTextViewModel = state.emailTextFormViewModel
        .copyWith(value: email, isValid: isValid, errorMessage: errorMessage);

    emit(state.copyWith(emailTextFormViewModel: emailTextViewModel));
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

  bool _isPasswordStrongEnough(Emitter<ResetPasswordPageState> emit) {
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

  bool _checkPasswordsIndentify(Emitter<ResetPasswordPageState> emit) {
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

  bool _isEmailValid(Emitter<ResetPasswordPageState> emit) {
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

  Stream<T> _debounceEvent<T extends ResetPasswordPageEvent>(
      Stream<T> stream, Stream<T> Function(T) streamFn) {
    final event = stream.takeLast(1);
    final isDebounceRequiredEvent = event is EditEmailEvent ||
        event is EditPasswordEvent ||
        event is EditConfirmationPasswordEvent ||
        event is SendEmailEvent;
    if (isDebounceRequiredEvent) {
      return stream
          .debounceTime(const Duration(milliseconds: 500))
          .asyncExpand(streamFn);
    }

    return stream.asyncExpand(streamFn);
  }
}
