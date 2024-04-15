import 'package:zagruzka_ekrana/data/album_entity_dto_mapper.dart';
import 'package:zagruzka_ekrana/data/data_source/data_source.dart';
import 'package:zagruzka_ekrana/domain/entities/album_entity.dart';
import 'package:zagruzka_ekrana/domain/repositories/album_repository.dart';

class AlbumRepositoryImpl implements AlbumRepository {
  final DataSource dataSource;

  AlbumRepositoryImpl(this.dataSource);

  @override
  Future<List<AlbumEntity>> getAlbom() async {
    final albom = await dataSource.getAlbum();
    final List<AlbumEntity> albomList = albom.map((e) => e.toEntity()).toList();
    return albomList;
  }
}
