import 'package:zagruzka_ekrana/features/auth/domain/repositories/account_repository.dart';

class GetTokenUsecase {
  final AccountRepository accountRepository;

  GetTokenUsecase(this.accountRepository);

  Future<String?> call(){
    return accountRepository.getToken();
  }
}