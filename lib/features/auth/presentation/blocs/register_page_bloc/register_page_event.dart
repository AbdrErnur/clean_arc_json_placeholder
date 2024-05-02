part of 'register_page_bloc.dart';

@freezed
class RegisterPageEvent with _$RegisterPageEvent {
  const factory RegisterPageEvent.editEmail(String email) = EditEmailEvent;
  const factory RegisterPageEvent.editPassword(String password) = EditPasswordEvent;
  const factory RegisterPageEvent.editConfirmationPassword(String confirmationPassword) = EditConfirmationPasswordEvent;
  const factory RegisterPageEvent.togglePasswordObscure() = TogglePasswordObscureEvent;
  const factory RegisterPageEvent.toggleConfirmationPasswordObscure() = ToggleConfirmationPasswordObscureEvent;
  const factory RegisterPageEvent.sendData() = SendDataEvent;
  const factory RegisterPageEvent.clearErrors() = ClearError;
}
