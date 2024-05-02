import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:zagruzka_ekrana/features/auth/presentation/blocs/reset_password_page_bloc/reset_password_page_bloc.dart';
import 'package:zagruzka_ekrana/service/routing/route_constants.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  TextEditingController emailTextInputController = TextEditingController();

  // TextEditingController passwordTextInputController = TextEditingController();
  // TextEditingController passwordTextRepeatInputController = TextEditingController();

  @override
  void dispose() {
    emailTextInputController.dispose();
    // passwordTextInputController.dispose();
    // passwordTextRepeatInputController.dispose();

    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      emailTextInputController.addListener(() {
        context.read<ResetPasswordPageBloc>().add(
            ResetPasswordPageEvent.editEmail(emailTextInputController.text));
      });
    });
    // passwordTextInputController.addListener(() {
    //   context.read<ResetPasswordPageBloc>().add(ResetPasswordPageEvent.editPassword(passwordTextInputController.text));
    // });
    // passwordTextRepeatInputController.addListener(() {
    //   context.read<ResetPasswordPageBloc>().add(ResetPasswordPageEvent.editConfirmationPassword(
    //       passwordTextRepeatInputController.text));
    // });
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ResetPasswordPageBloc>();
    return BlocListener<ResetPasswordPageBloc, ResetPasswordPageState>(
      listenWhen: (context, oldState) {
        return oldState.status != ResetStatus.none;
      },
      listener: (BuildContext context, state) {
        switch (state.status) {
          case ResetStatus.loading:
            context.loaderOverlay.show();
          case ResetStatus.failure:
            context.loaderOverlay.hide();
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text(state.message),
                    actions: [
                      TextButton(
                          onPressed: () {
                            bloc.add(
                                const ResetPasswordPageEvent.clearErrors());
                            context.pop();
                          },
                          child: const Text('Ok'))
                    ],
                  );
                });
          case ResetStatus.emailSent:
            context.loaderOverlay.hide();
            context.go(AppRoutePaths.signIn.fullPath);
          case ResetStatus.none:
          case ResetStatus.codeAndPasswordSent:
          // TODO: Handle this case.
          case ResetStatus.succeed:
          // TODO: Handle this case.
        }
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: BlocBuilder<ResetPasswordPageBloc, ResetPasswordPageState>(
            builder: (context, state) {
              final emailViewModel = state.emailTextFormViewModel;
              // final passwordViewModel = state.passwordTextFormViewModel;
              // final confirmPasswordViewModel =
              //     state.passwordRepeatTextFormViewModel;
              final bloc = context.read<ResetPasswordPageBloc>();
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: emailTextInputController,
                    decoration: InputDecoration(
                      errorText: emailViewModel.errorMessage.isEmpty
                          ? null
                          : emailViewModel.errorMessage,
                      labelText: 'Введите email',
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                      onPressed: () =>
                          bloc.add(const ResetPasswordPageEvent.sendEmail()),
                      child: const Text('Continue'))
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
