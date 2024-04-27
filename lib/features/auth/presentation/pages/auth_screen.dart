import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zagruzka_ekrana/service/routing/route_constants.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  TextEditingController emailTextInputController = TextEditingController();
  TextEditingController passwordTextInputController = TextEditingController();

  // TextEditingController passwordTextRepeatInputController =
  // TextEditingController();

  @override
  void dispose() {
    emailTextInputController.dispose();
    passwordTextInputController.dispose();
    // passwordTextRepeatInputController.dispose();

    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      emailTextInputController.addListener(() {
        // context
        //     .read<RegisterPageBloc>()
        //     .add(RegisterPageEvent.editEmail(emailTextInputController.text));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // final bloc = context.read<RegisterPageBloc>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailTextInputController,
              decoration: const InputDecoration(
                // errorText: emailViewModel.errorMessage,
                icon: Icon(Icons.email),
                labelText: 'Введите email',
              ),
            ),
            TextFormField(
              controller: passwordTextInputController,
              // obscureText: passwordViewModel.isObscured,
              decoration: InputDecoration(
                labelText: 'Введите пароль',
                suffixIcon: IconButton(
                  onPressed: () {
                  },
                  icon: const Icon(Icons.remove_red_eye_outlined),
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {},
                // bloc.add(const RegisterPageEvent.sendData()),
                child: const Text('Войти')),
            ElevatedButton(
              onPressed: () => context.go(AppRoutePaths.register.path),
              child: const Text('Зарегестрироваться'),
            ),
          ],
        ),
      ),
    );
  }
}
