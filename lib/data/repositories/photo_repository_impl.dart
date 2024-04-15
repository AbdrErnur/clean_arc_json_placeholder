import 'package:zagruzka_ekrana/data/data_source/data_source.dart';
import 'package:zagruzka_ekrana/data/photo_entity_dto_mapper.dart';
import 'package:zagruzka_ekrana/domain/entities/photo_entity.dart';
import 'package:zagruzka_ekrana/domain/repositories/photo_repository.dart';

class PhotoRepositoryImpl implements PhotoRepository{
  final DataSource dataSource;

  PhotoRepositoryImpl(this.dataSource);

  @override
  Future<List<PhotoEntity>> getPhoto() async {
    final photo = await dataSource.getPhoto();
    final List<PhotoEntity> listPost = photo.map((e) => e.toEntity()).toList();
    return listPost;
  }

}