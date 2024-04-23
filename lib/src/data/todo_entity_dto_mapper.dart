
import 'package:zagruzka_ekrana/src/data/dto_entities/todo_entity_dto.dart';
import 'package:zagruzka_ekrana/src/domain/entities/todo_entity.dart';

extension TodoEntityDtoMapper on TodoEntityDto {
  TodoEntity toEntity() {
    return TodoEntity(
      userId: userId,
      id: id,
      title: title,
      completed: completed,
    );
  }
}
