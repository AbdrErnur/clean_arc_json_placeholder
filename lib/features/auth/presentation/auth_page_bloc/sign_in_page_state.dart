part of 'sign_in_page_bloc.dart';

enum SignInStatus { none, loading, failure, succeed }

@freezed
class SignInPageState with _$SignInPageState {
  const factory SignInPageState({
    @Default(EmailTextFormViewModel()) EmailTextFormViewModel emailTextFormViewModel,
    @Default(PasswordTextFormViewModel()) PasswordTextFormViewModel passwordTextFormViewModel,
    @Default(SignInStatus.none) SignInStatus status,
    @Default('') String message,
  }) = _SignInPageState;
}
