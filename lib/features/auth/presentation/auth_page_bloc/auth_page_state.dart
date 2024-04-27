part of 'auth_page_bloc.dart';


@freezed
class AuthPageState with _$AuthPageState {
  const factory AuthPageState({
  @Default(EmailTextFormViewModel()) EmailTextFormViewModel emailTextFormViewModel,
  @Default(PasswordTextFormViewModel()) PasswordTextFormViewModel passwordTextFormViewModel,
  })=_AuthPageState;
}
