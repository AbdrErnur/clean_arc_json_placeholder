import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/transformers.dart';
import 'package:zagruzka_ekrana/features/auth/domain/usecase/sign_in_usecase.dart';
import 'package:zagruzka_ekrana/features/auth/presentation/auth_view_model/email_text_form_view_model.dart';
import 'package:zagruzka_ekrana/features/auth/presentation/auth_view_model/password_text_form_view_model.dart';

part 'sign_in_page_bloc.freezed.dart';

part 'sign_in_page_event.dart';

part 'sign_in_page_state.dart';

class SignInPageBloc extends Bloc<SignInPageEvent, SignInPageState> {
  SignInPageBloc({required SignInUsecase createSignInUsecase})
      : _signInUsecase = createSignInUsecase,
        super(const SignInPageState()) {
    on<SignInPageEvent>(_handleEvents, transformer: _debounceEvent);
  }

  final SignInUsecase _signInUsecase;

  Future<void> _handleEvents(SignInPageEvent event, Emitter<SignInPageState> emit) async {
    await event.when(
      editEmail: (email) => _onEditEmail(email, emit),
      editPassword: (password) => _onPasswordEdit(password, emit),
      togglePasswordObscure: () {
        final viewModel = state.passwordTextFormViewModel;
        final newState = state.copyWith(
            passwordTextFormViewModel:
                viewModel.copyWith(isObscured: !viewModel.isObscured));
        emit(newState);
      },
      sendData: () async {
        emit(state.copyWith(status: SignInStatus.loading));
        final result = await _submit();
        emit(result);
      },
      clearErrors: () {
        emit(state.copyWith(message: '', status: SignInStatus.none));
      },
    );
  }

  Future<SignInPageState> _submit() async {

    if (!state.emailTextFormViewModel.isValid) {
      return state.copyWith(
        status: SignInStatus.failure,
        message: 'Wrong email format',
      );
    }
    final result = await _signInUsecase.call(
        email: state.emailTextFormViewModel.value,
        password: state.passwordTextFormViewModel.value);

    print(state.emailTextFormViewModel.value);
    print(state.passwordTextFormViewModel.value);

    return result.fold(
      (left) => state.copyWith(
          status: SignInStatus.failure,
          message: '${left.message}: ${left.errorCode}'),
      (right) => state.copyWith(
          status: SignInStatus.succeed, message: 'Congratulations'),
    );
  }

  Future<void> _onEditEmail(String email, Emitter<SignInPageState> emit) async {
    final isValid = isEmailValid(emit);

    String errorMessage = '';

    if (!isValid) {
      errorMessage = 'Неправильный формат почты';
    }

    final emailTextViewModel = state.emailTextFormViewModel
        .copyWith(value: email, isValid: isValid, errorMessage: errorMessage);

    emit(state.copyWith(emailTextFormViewModel: emailTextViewModel));
  }

  Future<void> _onPasswordEdit(
      String password, Emitter<SignInPageState> emit) async {
    final newPasswordTextViewModel =
        state.passwordTextFormViewModel.copyWith(value: password);
    emit(state.copyWith(passwordTextFormViewModel: newPasswordTextViewModel));
  }

  bool isEmailValid(Emitter<SignInPageState> emit) {
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

  Stream<T> _debounceEvent<T extends SignInPageEvent>(
      Stream<T> stream, Stream<T> Function(T) streamFn) {
    final event = stream.takeLast(1);
    final isDebounceRequiredEvent = event is EditEmailEvent ||
        event is EditPasswordEvent ||
        event is SendDataEvent;
    if (isDebounceRequiredEvent) {
      return stream
          .debounceTime(const Duration(milliseconds: 500))
          .asyncExpand(streamFn);
    }

    return stream.asyncExpand(streamFn);
  }
}
