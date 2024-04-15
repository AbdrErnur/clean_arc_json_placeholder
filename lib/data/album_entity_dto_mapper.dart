import 'package:zagruzka_ekrana/data/dto_entities/album_entity_dto.dart';
import 'package:zagruzka_ekrana/domain/entities/album_entity.dart';

extension AlbumEntityDtoMapper on AlbumEntityDto {
  AlbumEntity toEntity() {
    return AlbumEntity(
      userId: userId,
      id: id,
      title: title,
    );
  }
}
