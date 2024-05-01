import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:zagruzka_ekrana/features/auth/presentation/auth_page_bloc/sign_in_page_bloc.dart';
import 'package:zagruzka_ekrana/service/routing/route_constants.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailTextInputController = TextEditingController();
  TextEditingController passwordTextInputController = TextEditingController();

  @override
  void dispose() {
    emailTextInputController.dispose();
    passwordTextInputController.dispose();

    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      emailTextInputController.addListener(() {
        context
            .read<SignInPageBloc>()
            .add(SignInPageEvent.editEmail(emailTextInputController.text));
      });
    });
    passwordTextInputController.addListener(() {
      context
          .read<SignInPageBloc>()
          .add(SignInPageEvent.editPassword(passwordTextInputController.text));
    });
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SignInPageBloc>();
    return BlocListener<SignInPageBloc, SignInPageState>(
      listenWhen: (context, oldState) {
        return oldState.status != SignInStatus.none;
      },
      listener: (BuildContext context, state) {
        switch (state.status) {
          case SignInStatus.loading:
            context.loaderOverlay.show();
          case SignInStatus.failure:
            context.loaderOverlay.hide();
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text(state.message),
                    actions: [
                      TextButton(
                          onPressed: () {
                            bloc.add(const SignInPageEvent.clearErrors());
                            context.pop();
                          },
                          child: const Text('Ok'))
                    ],
                  );
                });
          case SignInStatus.succeed:
            context.loaderOverlay.hide();
            context.go(AppRoutePaths.homePage.fullPath);

            // context.go(AppRoutePaths.homePage.fullPath);
          case SignInStatus.none:
        }
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: BlocBuilder<SignInPageBloc, SignInPageState>(
            builder: (context, state){
              final emailViewModel = state.emailTextFormViewModel;
              final passwordViewModel = state.passwordTextFormViewModel;
              final bloc = context.read<SignInPageBloc>();
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: emailTextInputController,
                    decoration: InputDecoration(
                      errorText: emailViewModel.errorMessage.isEmpty?null:emailViewModel.errorMessage,
                      icon: const Icon(Icons.email),
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
                          bloc.add(const SignInPageEvent.togglePasswordObscure());
                        },
                        icon: const Icon(Icons.remove_red_eye_outlined),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                      onPressed: () {
                        bloc.add( const SignInPageEvent.sendData());
                      },
                      child: const Text('Войти')),
                  ElevatedButton(
                    onPressed: () => context.go(
                        AppRoutePaths.register.fullPath),
                    child: const Text('Зарегестрироваться'),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
