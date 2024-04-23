import 'package:zagruzka_ekrana/src/data/album_entity_dto_mapper.dart';
import 'package:zagruzka_ekrana/src/data/data_source/data_source.dart';
import 'package:zagruzka_ekrana/src/domain/entities/album_entity.dart';
import 'package:zagruzka_ekrana/src/domain/repositories/album_repository.dart';

class AlbumRepositoryImpl implements AlbumRepository {
  final DataSource dataSource;

  AlbumRepositoryImpl(this.dataSource);

  @override
  Future<List<AlbumEntity>> getAlbom() async {
    final album = await dataSource.getAlbum();
    final List<AlbumEntity> albumList = album.map((e) => e.toEntity()).toList();
    return albumList;
  }
}
