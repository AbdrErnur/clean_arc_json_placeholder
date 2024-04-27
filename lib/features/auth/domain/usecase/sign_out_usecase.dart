import 'package:zagruzka_ekrana/features/auth/domain/entities/account_entity.dart';
import 'package:zagruzka_ekrana/features/auth/domain/repositories/account_repository.dart';

class SignOutUsecase {
  final AccountRepository accountRepository;

  SignOutUsecase(this.accountRepository);

  Future<void> call(String email, String password){
    return accountRepository.signOut();
  }
}