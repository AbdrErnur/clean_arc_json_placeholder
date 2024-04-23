import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zagruzka_ekrana/features/auth/presentation/view_model/email_text_form_view_model.dart';
import 'package:zagruzka_ekrana/features/auth/presentation/view_model/password_text_form_view_model.dart';

part 'auth_page_bloc.freezed.dart';

part 'auth_page_event.dart';

part 'auth_page_state.dart';

class AuthPageBloc extends Bloc<AuthPageEvent, AuthPageState> {
  AuthPageBloc({
    required EmailTextFormViewModel emailTextFormViewModel,
    required PasswordTextFormViewModel passwordTextFormViewModel,
  }) : super(AuthPageState(
            emailTextFormViewModel: emailTextFormViewModel,
            passwordTextFormViewModel: passwordTextFormViewModel)) {}
}

