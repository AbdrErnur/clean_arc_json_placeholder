import 'package:either_dart/either.dart';
import 'package:zagruzka_ekrana/core/network/error.dart';
import 'package:zagruzka_ekrana/features/auth/domain/repositories/account_repository.dart';

class ConfirmPasswordResetUseCase {
  final AccountRepository accountRepository;

  ConfirmPasswordResetUseCase(this.accountRepository);

  Future<Either<AppError, void>> call({required String code, required String newPassword}) async {
    try {
      await accountRepository.confirmPasswordReset(newPassword,newPassword);
      return const Right(null);
    } on AppError catch (e) {
      return Left(e);
    }
  }
}
