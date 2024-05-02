import 'package:firebase_auth/firebase_auth.dart';
import 'package:zagruzka_ekrana/features/auth/domain/entities/account_entity.dart';

abstract class AccountRepository {
  Future<AccountEntity> signUp(String email, String password);
  Future<AccountEntity> signIn(String email, String password);
  Future<void> signOut();
  User? getCurrentUser();
  Future<String?> getToken();
  Future<void> sendPasswordRequestEmail(String email);
  Future<void> confirmPasswordReset(String code,String newPassword);
}