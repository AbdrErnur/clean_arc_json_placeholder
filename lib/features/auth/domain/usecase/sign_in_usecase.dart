import 'package:either_dart/either.dart';
import 'package:zagruzka_ekrana/core/network/error.dart';
import 'package:zagruzka_ekrana/features/auth/domain/entities/account_entity.dart';
import 'package:zagruzka_ekrana/features/auth/domain/repositories/account_repository.dart';

class SignInUsecase {
  final AccountRepository accountRepository;

  SignInUsecase(this.accountRepository);

  Future<Either<AppError, AccountEntity?>> call({required String email,required String password}) async{
    try{
      final accountEntity = await accountRepository.signIn(email, password);
      return Right(accountEntity);

    } on AppError catch (e){
      return Left(e);
    }
  }
}