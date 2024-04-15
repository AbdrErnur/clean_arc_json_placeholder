import 'package:zagruzka_ekrana/data/dto_entities/post_entity_dto.dart';
import 'package:zagruzka_ekrana/domain/entities/post_entity.dart';

extension PostEntityDtoMapper on PostEntityDto {
  PostEntity toEntity() {
    return PostEntity(
      userId: userId,
      id: id,
      title: title,
      body: body,
    );
  }
}
