import 'package:zagruzka_ekrana/src/data/data_source/data_source.dart';
import 'package:zagruzka_ekrana/src/data/user_entity_dto_mapper.dart';
import 'package:zagruzka_ekrana/src/domain/entities/user_entity.dart';
import 'package:zagruzka_ekrana/src/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository{
  final DataSource dataSource;

  UserRepositoryImpl(this.dataSource);


  @override
  Future<List<UserEntity>> getUser() async {
    final userList = await dataSource.getUser();
    final List<UserEntity> listUser = userList.map((userDto) => userDto.toEntity()).toList(growable: false);


    return listUser;
  }


}