import 'package:zagruzka_ekrana/src/domain/entities/user_entity.dart';
import 'package:zagruzka_ekrana/src/domain/repositories/user_repository.dart';

class GetUsersUsecase {
  final UserRepository userRepository;

  GetUsersUsecase(this.userRepository);

  Future<List<UserEntity>> call() {
    return userRepository.getUser();

  }
}