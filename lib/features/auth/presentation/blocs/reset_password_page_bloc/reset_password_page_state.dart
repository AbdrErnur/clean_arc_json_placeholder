part of 'reset_password_page_bloc.dart';

enum ResetStatus {
  none, //inital
  loading,
  emailSent, //email sent successfully
  codeAndPasswordSent, //code sent successfully
  failure, // failed to set a new Password (wrong code, invalid password)
  succeed,
}

@freezed
class ResetPasswordPageState with _$ResetPasswordPageState {
  const factory ResetPasswordPageState({
    @Default(EmailTextFormViewModel())
    EmailTextFormViewModel emailTextFormViewModel,
    @Default(PasswordTextFormViewModel())
    PasswordTextFormViewModel passwordTextFormViewModel,
    @Default(PasswordRepeatTextFormViewModel())
    PasswordRepeatTextFormViewModel passwordRepeatTextFormViewModel,
    @Default(ResetStatus.none) ResetStatus status,
    @Default('') String message,
  }) = _ResetPasswordPageState;
}
