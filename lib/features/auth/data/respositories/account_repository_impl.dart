import 'package:firebase_auth/firebase_auth.dart';
import 'package:zagruzka_ekrana/features/auth/data/data_source/account_data_source.dart';
import 'package:zagruzka_ekrana/features/auth/data/mappers/account_mapper.dart';
import 'package:zagruzka_ekrana/features/auth/domain/entities/account_entity.dart';
import 'package:zagruzka_ekrana/features/auth/domain/repositories/account_repository.dart';

class AccountRepositoryImpl implements AccountRepository {
  final AccountDataSource _dataSource;

  AccountRepositoryImpl(this._dataSource);

  @override
  Future<AccountEntity> signUp(String email, String password) async {
    final user = await _dataSource.signUp(email, password);
    return user.toEntity(); // Использование extension для маппинга
  }

  @override
  Future<AccountEntity> signIn(String email, String password) async {
    final user = await _dataSource.signIn(email, password);
    return user.toEntity();
  }

  @override
  Future<void> signOut() async {
    await _dataSource.signOut();
  }

  @override
  User? getCurrentUser() {
    return _dataSource.getCurrentUser();
  }

  @override
  Future<String?> getToken() async {
    String? token = await _dataSource.getToken();
    return token;
  }

  @override
  Future<void> sendPasswordRequestEmail(String email) async {
    await _dataSource.sendPasswordRequestEmail(email);
  }

  @override
  Future<void> confirmPasswordReset(String code, String password) async {
    await _dataSource.confirmPasswordReset(code, password);
  }
}
