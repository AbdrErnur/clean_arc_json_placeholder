import 'package:firebase_auth/firebase_auth.dart';
import 'package:zagruzka_ekrana/features/auth/domain/entities/account_entity.dart';
import 'package:zagruzka_ekrana/features/auth/domain/repositories/account_repository.dart';

class AccountUsecase{
  final AccountRepository accountRepository;

  AccountUsecase(this.accountRepository);

  Future<AccountEntity?> callSignUp(String email, String password){
    return accountRepository.signUp(email, password);
  }

  Future<AccountEntity?> callSignIn(String email, String password){
    return accountRepository.signIn(email, password);
  }

  Future<void> callSignOut(){
    return accountRepository.signOut();
  }

  User? callGetCurrentUser(){
    return accountRepository.getCurrentUser();
  }

}