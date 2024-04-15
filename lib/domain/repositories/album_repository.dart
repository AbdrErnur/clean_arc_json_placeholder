import 'package:zagruzka_ekrana/domain/entities/album_entity.dart';

abstract interface class AlbumRepository{
  Future<List<AlbumEntity>> getAlbom();
}