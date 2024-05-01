part of 'sign_in_page_bloc.dart';

@freezed
class SignInPageEvent with _$SignInPageEvent {
  const factory SignInPageEvent.editEmail(String email) = EditEmailEvent;
  const factory SignInPageEvent.editPassword(String password) = EditPasswordEvent;
  const factory SignInPageEvent.togglePasswordObscure() = TogglePasswordObscureEvent;
  const factory SignInPageEvent.sendData() = SendDataEvent;
  const factory SignInPageEvent.clearErrors() = ClearError;
}
