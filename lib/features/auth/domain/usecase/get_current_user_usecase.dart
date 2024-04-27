import 'package:firebase_auth/firebase_auth.dart';
import 'package:zagruzka_ekrana/features/auth/domain/repositories/account_repository.dart';

class GetCurrentUserUsecase {
  final AccountRepository accountRepository;

  GetCurrentUserUsecase(this.accountRepository);

  User? call(){
    return accountRepository.getCurrentUser();
  }
}


