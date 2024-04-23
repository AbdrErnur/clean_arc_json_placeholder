part of 'auth_page_bloc.dart';


@freezed
class AuthPageState with _$AuthPageState {
  const factory AuthPageState({
  required EmailTextFormViewModel emailTextFormViewModel,
  required PasswordTextFormViewModel passwordTextFormViewModel,
  })=_AuthPageState;
}
