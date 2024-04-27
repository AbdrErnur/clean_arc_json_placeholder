import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:zagruzka_ekrana/di.dart';
import 'package:zagruzka_ekrana/service/firebase_api.dart';
import 'package:zagruzka_ekrana/service/routing/route_config.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseApi().initNotifications();
  setUpDi();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // routerConfig: ,
      routeInformationProvider: AppRouteConfig.router.routeInformationProvider,
      routeInformationParser: AppRouteConfig.router.routeInformationParser,
      routerDelegate: AppRouteConfig.router.routerDelegate,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      builder: (context, child) {
        return LoaderOverlay(child: child ?? const SizedBox.shrink());
      },
      // routerConfig: router,
    );
  }
}
