
import 'package:zagruzka_ekrana/src/domain/entities/user_entity.dart';

abstract interface class UserRepository{
  Future<List<UserEntity>> getUser();
}