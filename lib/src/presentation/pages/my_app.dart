import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zagruzka_ekrana/di.dart';
import 'package:zagruzka_ekrana/src/domain/usecases/get_user_usecase.dart';
import 'package:zagruzka_ekrana/src/presentation/home_page_bloc/home_page_bloc.dart';
import 'package:zagruzka_ekrana/src/presentation/pages/loading_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageBloc(
        getIt.get<GetUsersUsecase>(),
      ),
      child: const MaterialApp(
        home: LoadingPage(),
      ),
    );
  }
}
