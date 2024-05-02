import 'package:either_dart/either.dart';
import 'package:zagruzka_ekrana/core/network/error.dart';
import 'package:zagruzka_ekrana/features/auth/domain/repositories/account_repository.dart';

class SendPasswordRequestEmailUseCase {
  final AccountRepository accountRepository;

  SendPasswordRequestEmailUseCase(this.accountRepository);

  Future<Either<AppError, void>> call({required String email}) async {
    try {
      await accountRepository.sendPasswordRequestEmail(email);
      return const Right(null);
    } on AppError catch (e) {
      return Left(e);
    }
  }
}
