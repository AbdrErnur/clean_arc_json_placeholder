import 'package:firebase_auth/firebase_auth.dart';
import 'package:zagruzka_ekrana/core/network/error.dart';

class AccountDataSource {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  // Регистрация пользователя
  Future<User?> signUp(String email, String password) async {
    try {
      UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
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
      UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } on FirebaseAuthException catch  (e) {
      print("Ошибка входа: ${e.code}");
      //**invalid-email**:
      // Thrown if the email address is not valid.
      // **user-disabled**:
      // Thrown if the user corresponding to the given email has been disabled.
      // **user-not-found**:
      // Thrown if there is no user corresponding to the given email.
      // **wrong-password**:
      // Thrown if the password is invalid for the given email, or the account corresponding to the email does not have a password set.
      final code = e.code;
      if(code == 'invalid-email'||code == 'user-not-found'||code == 'wrong-password'){
        throw IncorrectDataError(errorCode: e.code, message: 'Проверьте введенные данные!');
      }
      if(code == 'user-disabled'){
        throw UndefinedError(message: 'Данный пользователь был забанен!');
      }
      throw UndefinedError(errorCode: e.code, message: 'Ошибка входа');
    }
  }

  // Выход из системы
  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      print("Ошибка выхода: $e");
    }
  }

  // Получение текущего пользователя
  User? getCurrentUser() {
    return _firebaseAuth.currentUser;
  }


  ///запрос на смену пороля:
  ///файрбейс пришлет код
  Future<void> sendPasswordRequest(String email) async {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
  }


  /// юзер должен ввести код и новый пароль
  /// при отправке сменится пароль
  Future<void> confirmPasswordReset() async {
    await _firebaseAuth.confirmPasswordReset(code: '', newPassword: '');
  }
}
