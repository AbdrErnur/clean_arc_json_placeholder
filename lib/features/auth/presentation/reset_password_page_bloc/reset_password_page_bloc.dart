import 'package:flutter_bloc/flutter_bloc.dart';
part 'reset_password_page_event.dart';
part 'reset_passord_page_state.dart';

class ResetPasswordPageBloc extends Bloc{
  ResetPasswordPageBloc() : super(ResetPasswordPageState()){

  }
}