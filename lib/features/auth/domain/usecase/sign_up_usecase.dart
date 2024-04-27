import 'package:firebase_auth/firebase_auth.dart';
import 'package:zagruzka_ekrana/features/auth/domain/entities/account_entity.dart';
import 'package:zagruzka_ekrana/features/auth/domain/repositories/account_repository.dart';

class SignUpUsecase {
  final AccountRepository _accountRepository;

  SignUpUsecase(this._accountRepository);

  Future<AccountEntity?> call({required String email,required String password}){
    return _accountRepository.signUp(email, password);
  }
}


