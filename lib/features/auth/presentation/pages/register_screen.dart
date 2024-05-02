import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:zagruzka_ekrana/features/auth/presentation/blocs/register_page_bloc/register_page_bloc.dart';
import 'package:zagruzka_ekrana/service/routing/route_constants.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailTextInputController = TextEditingController();
  TextEditingController passwordTextInputController = TextEditingController();
  TextEditingController passwordTextRepeatInputController = TextEditingController();

  @override
  void dispose() {
    emailTextInputController.dispose();
    passwordTextInputController.dispose();
    passwordTextRepeatInputController.dispose();

    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      emailTextInputController.addListener(() {
        context.read<RegisterPageBloc>().add(RegisterPageEvent.editEmail(emailTextInputController.text));
      });
    });
    passwordTextInputController.addListener(() {
      context.read<RegisterPageBloc>().add(RegisterPageEvent.editPassword(passwordTextInputController.text));
    });
    passwordTextRepeatInputController.addListener(() {
      context.read<RegisterPageBloc>().add(RegisterPageEvent.editConfirmationPassword(
          passwordTextRepeatInputController.text));
    });

  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<RegisterPageBloc>();
    return BlocListener<RegisterPageBloc, RegisterPageState>(
      listenWhen: (context, oldState) {
        return oldState.status != RegistrationStatus.none;
      },
      listener: (BuildContext context, state) {
        switch (state.status) {
          case RegistrationStatus.loading:
            context.loaderOverlay.show();
          case RegistrationStatus.failure:
            context.loaderOverlay.hide();
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text(state.message),
                    actions: [
                      TextButton(
                          onPressed: () {
                            bloc.add(const RegisterPageEvent.clearErrors());
                            context.pop();
                          },
                          child: const Text('Ok'))
                    ],
                  );
                });
          case RegistrationStatus.succeed:
            context.loaderOverlay.hide();
            context.go(AppRoutePaths.homePage.fullPath);
          case RegistrationStatus.none:
        }
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: BlocBuilder<RegisterPageBloc, RegisterPageState>(
            builder: (context, state) {
              final emailViewModel = state.emailTextFormViewModel;
              final passwordViewModel = state.passwordTextFormViewModel;
              final confirmPasswordViewModel =
                  state.passwordRepeatTextFormViewModel;
              final bloc = context.read<RegisterPageBloc>();
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: emailTextInputController,
                    decoration: InputDecoration(
                      errorText: emailViewModel.errorMessage.isEmpty?null:emailViewModel.errorMessage,
                      labelText: 'Введите email',
                    ),
                  ),
                  TextFormField(
                    controller: passwordTextInputController,
                    obscureText: passwordViewModel.isObscured,
                    decoration: InputDecoration(
                      labelText: 'Введите пароль',
                      suffixIcon: IconButton(
                        onPressed: () {
                          bloc.add(const RegisterPageEvent.togglePasswordObscure());
                        },
                        icon: const Icon(Icons.remove_red_eye_outlined),
                      ),
                    ),
                  ),
                  TextFormField(
                    controller: passwordTextRepeatInputController,
                    obscureText: confirmPasswordViewModel.isObscured,
                    decoration: InputDecoration(
                      labelText: 'Подтвердите пороль',
                      suffixIcon: IconButton(
                        onPressed: () {
                          bloc.add(const RegisterPageEvent
                              .toggleConfirmationPasswordObscure());
                        },
                        icon: const Icon(Icons.remove_red_eye_outlined),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                      onPressed: () =>
                          bloc.add(const RegisterPageEvent.sendData()),
                      child: const Text('Register'))
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
