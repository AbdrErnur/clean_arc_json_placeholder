part of 'reset_password_page_bloc.dart';

@freezed
class ResetPasswordPageEvent with _$ResetPasswordPageEvent {
  const factory ResetPasswordPageEvent.editEmail(String email) = EditEmailEvent;
  const factory ResetPasswordPageEvent.editPassword(String password) = EditPasswordEvent;
  const factory ResetPasswordPageEvent.editConfirmationPassword(String confirmationPassword) = EditConfirmationPasswordEvent;
  const factory ResetPasswordPageEvent.togglePasswordObscure() = TogglePasswordObscureEvent;
  const factory ResetPasswordPageEvent.toggleConfirmationPasswordObscure() = ToggleConfirmationPasswordObscureEvent;
  const factory ResetPasswordPageEvent.sendEmail() = SendEmailEvent;
  const factory ResetPasswordPageEvent.sendCodeAndPassword() = SendCodeAndPasswordEvent;
  const factory ResetPasswordPageEvent.clearErrors() = ClearErrorEvent;
}
