import 'package:zagruzka_ekrana/domain/entities/user_entity.dart';

abstract interface class UserRepository{
  Future<List<UserEntity>> getUser();
}