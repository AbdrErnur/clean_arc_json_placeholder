part of 'register_page_bloc.dart';

enum RegistrationStatus{none, loading, failure, succeed}


@freezed
class RegisterPageState with _$RegisterPageState {
  const factory RegisterPageState({
    @Default(EmailTextFormViewModel()) EmailTextFormViewModel emailTextFormViewModel,
    @Default(PasswordTextFormViewModel()) PasswordTextFormViewModel passwordTextFormViewModel,
    @Default(PasswordRepeatTextFormViewModel()) PasswordRepeatTextFormViewModel passwordRepeatTextFormViewModel,
    @Default(RegistrationStatus.none ) RegistrationStatus status,
    @Default('') String message,
})=_RegisterPageState;
}