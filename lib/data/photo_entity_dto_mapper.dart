import 'package:zagruzka_ekrana/data/dto_entities/photo_entity_dto.dart';
import 'package:zagruzka_ekrana/domain/entities/photo_entity.dart';

extension PhotoEntityDtoMapper on PhotoEntityDto {
  PhotoEntity toEntity() {
    return PhotoEntity(
      albumId: albumId,
      id: id,
      title: title,
      url: url,
      thumbnailUrl: thumbnailUrl,
    );
  }
}
