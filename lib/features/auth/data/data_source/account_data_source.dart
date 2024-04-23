import 'package:firebase_auth/firebase_auth.dart';

class DataSource {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Регистрация пользователя
  Future<User?> signUp(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      print("Ошибка регистрации: $e");
      return null;
    }
  }

  // Future<String?> getToken()async{
  //   return FirebaseAuth.instance.currentUser?.getIdToken();
  // }


  // Получение токена текущего пользователя
  Future<String?> getToken() async {
    try {
      return await getCurrentUser()?.getIdToken();
    } catch (e) {
      print("Ошибка получения токена: $e");
      return null;
    }
  }

  // Вход в систему
  Future<User?> signIn(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      print("Ошибка входа: $e");
      return null;
    }
  }

  // Выход из системы
  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      print("Ошибка выхода: $e");
    }
  }

  // Получение текущего пользователя
  User? getCurrentUser() {
    return _auth.currentUser;
  }
}
