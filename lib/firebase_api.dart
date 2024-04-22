import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:zagruzka_ekrana/firebase_options.dart';

class FirebaseApi{
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();
  Future<void> initNotifications()async{
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    FirebaseMessaging.instance.setAutoInitEnabled(true);
    final firebaseMessaging = FirebaseMessaging.instance;
    await firebaseMessaging.requestPermission();
    setN();
  }

  setN(){
    flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>()?.requestNotificationsPermission();
    FirebaseMessaging.onMessage.listen((event) {
      const android  = AndroidNotificationDetails('1', 'channelName',  icon: 'mipmap/ic_launcher' );
      flutterLocalNotificationsPlugin.show(1, event.notification?.title, event.notification?.body, const NotificationDetails(android: android));
    });
  }
}