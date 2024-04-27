import 'package:firebase_auth/firebase_auth.dart';
import 'package:zagruzka_ekrana/features/auth/data/data_source/account_data_source.dart';
import 'package:zagruzka_ekrana/features/auth/data/mappers/account_mapper.dart';
import 'package:zagruzka_ekrana/features/auth/domain/entities/account_entity.dart';
import 'package:zagruzka_ekrana/features/auth/domain/repositories/account_repository.dart';

class AccountRepositoryImpl implements AccountRepository {
  final AccountDataSource _dataSource;

  AccountRepositoryImpl(this._dataSource);

  @override
  Future<AccountEntity?> signUp(String email, String password) async {
    try {
      User? user = await _dataSource.signUp(email, password);
      if (user != null) {
        return await user.toEntity();  // Использование extension для маппинга
      }
      return null;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  @override
  Future<AccountEntity?> signIn(String email, String password) async {
    try{
      User? user = await _dataSource.signIn(email, password);
      if(user != null){
        return await user.toEntity();
      }
      return null;
    } catch (e) {
      print(e.toString());
      return null;
    }
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
  Future<String?> getToken() async{
    String? token = await _dataSource.getToken();
    return token;
  }

}
