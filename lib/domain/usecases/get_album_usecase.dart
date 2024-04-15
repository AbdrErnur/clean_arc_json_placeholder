import 'package:zagruzka_ekrana/domain/entities/album_entity.dart';
import 'package:zagruzka_ekrana/domain/repositories/album_repository.dart';

class GetAlbumUsecase {
  final AlbumRepository albumRepository;

  GetAlbumUsecase(this.albumRepository);

  Future<List<AlbumEntity>> call() {
    return albumRepository.getAlbom();
  }
}