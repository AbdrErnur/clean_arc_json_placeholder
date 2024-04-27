part of 'auth_page_bloc.dart';

abstract class AuthPageEvent{}

class SubmitAuthEvent extends AuthPageEvent {
  final String email;
  final String password;

  SubmitAuthEvent(this.email, this.password);
}

class ResetAuthEvent extends AuthPageEvent {}
