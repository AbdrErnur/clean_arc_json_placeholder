import 'package:zagruzka_ekrana/data/dto_entities/todo_entity_dto.dart';
import 'package:zagruzka_ekrana/domain/entities/todo_entity.dart';

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
