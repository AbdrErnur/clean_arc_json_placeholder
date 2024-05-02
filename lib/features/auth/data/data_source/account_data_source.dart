import 'package:firebase_auth/firebase_auth.dart';
import 'package:zagruzka_ekrana/core/network/error.dart';

class AccountDataSource {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  // Регистрация пользователя
  Future<User> signUp(String email, String password) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user!;
    } on FirebaseAuthException catch (e) {
      throw IncorrectDataError(message: 'Не удалось зарегистрировать пользоватья: ${e.code}');
    } catch (e){
      throw UndefinedError(message: 'Нет сети');
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
  // Получение текущего пользователя
  User? getCurrentUser() {
    return _firebaseAuth.currentUser;
  }

  // Вход в систему
  Future<User> signIn(String email, String password) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final User user=  userCredential.user!;
      return user;
    } on FirebaseAuthException catch (e) {
      final code = e.code;
      if (code == 'invalid-email' ||
          code == 'user-not-found' ||
          code == 'wrong-password') {
        throw IncorrectDataError(
            errorCode: e.code, message: 'Проверьте введенные данные!');
      }
      if (code == 'user-disabled') {
        throw UndefinedError(message: 'Данный пользователь был забанен!');
      }
      throw UndefinedError(errorCode: e.code, message: 'Ошибка входа');
    } catch (e){
      throw NetworkError( message: 'Ошибка входа: $e');
    }
  }

  ///запрос на смену пороля:
  ///файрбейс пришлет код
  Future<void> sendPasswordRequestEmail(String email) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      print('Ошибка: ${e.code}');
      final code = e.code;
      if (code == 'auth/invalid-email' || code == 'user-not-found') {
        throw IncorrectDataError(
            errorCode: e.code, message: 'Проверьте введенные данные');
      }
      if (code == 'auth/missing-android-pkg-name') {
        throw UndefinedError(
            errorCode: e.code,
            message:
                'Если требуется установить пакет Android, необходимо указать имя пакета Android');
      }
      if (code == 'auth/missing-continue-uri') {
        throw UndefinedError(
            errorCode: e.code,
            message: 'В запросе должен быть указан URL продолжения');
      }
      if (code == 'auth/invalid-continue-uri') {
        throw UndefinedError(
            errorCode: e.code,
            message:
                'URL-адрес продолжения, указанный в запросе, недействителен');
      }
      if (code == 'auth/unauthorized-continue-uri') {
        throw UndefinedError(
            errorCode: e.code,
            message:
                'Домен URL-адреса продолжения не внесен в белый список. Добавьте домен в белый список в консоли Firebase');
      }
    }
  }

  /// юзер должен ввести код и новый пароль
  /// при отправке сменится пароль
  Future<void> confirmPasswordReset(String code, String password) async {
    try {
      await _firebaseAuth.confirmPasswordReset(
          code: code, newPassword: password);
    } on FirebaseAuthException catch (e) {
      print('Ошибка: ${e.code}');
      final code = e.code;
      if (code == 'expired-action-code') {
        throw IncorrectDataError(
            errorCode: e.code, message: 'Действие кода истекло.');
      }
      if (code == 'invalid-action-code') {
        throw UndefinedError(
            errorCode: e.code, message: 'Код действия недействителен.');
      }
      if (code == 'user-disabled') {
        throw UndefinedError(
            errorCode: e.code,
            message:
                'Пользователь, соответствующий предоставленному коду действия, отключен.');
      }
      if (code == 'user-not-found') {
        throw UndefinedError(
            errorCode: e.code,
            message: 'Пользователь, соответствующий коду действия, не найден.');
      }
      if (code == 'weak-password') {
        throw UndefinedError(
            errorCode: e.code, message: 'Новый пароль недостаточно надежен.');
      }
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
}
