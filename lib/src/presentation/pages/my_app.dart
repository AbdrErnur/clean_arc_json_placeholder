import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:zagruzka_ekrana/di.dart';
import 'package:zagruzka_ekrana/service/routing/route_config.dart';
import 'package:zagruzka_ekrana/src/domain/usecases/get_user_usecase.dart';
import 'package:zagruzka_ekrana/src/presentation/home_page_bloc/home_page_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageBloc(
        getUsersUsecase: getIt.get<GetUsersUsecase>(),
      ),
      child: MaterialApp.router(
          routeInformationParser: AppRouteConfig.router.routeInformationParser,
          routerDelegate: AppRouteConfig.router.routerDelegate,
          routeInformationProvider:
              AppRouteConfig.router.routeInformationProvider,
          // routerConfig: router,
          builder: (context, child) {
            return LoaderOverlay(
              child: child ?? const SizedBox.shrink(),
            );
          }),
    );
  }
}
