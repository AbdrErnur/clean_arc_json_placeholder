import 'package:zagruzka_ekrana/features/auth/domain/entities/account_entity.dart';
import 'package:zagruzka_ekrana/features/auth/domain/repositories/account_repository.dart';

class SignInUsecase {
  final AccountRepository accountRepository;

  SignInUsecase(this.accountRepository);

  Future<AccountEntity?> call(String email, String password){
    return accountRepository.signIn(email, password);
  }
}