import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:zagruzka_ekrana/di.dart';
import 'package:zagruzka_ekrana/firebase_api.dart';
import 'presentation/pages/my_app.dart';

Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseApi().initNotifications();
  String? token = await FirebaseMessaging.instance.getToken();
  print("Firebase Messaging Token: $token");
  setUp();
  runApp(
    const MyApp());
}
