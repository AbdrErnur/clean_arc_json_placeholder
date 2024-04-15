import 'package:zagruzka_ekrana/domain/entities/photo_entity.dart';
import 'package:zagruzka_ekrana/domain/repositories/photo_repository.dart';

class GetPhotoUsecase{
  final PhotoRepository photoRepository;

  GetPhotoUsecase(this.photoRepository);

  Future<List<PhotoEntity>> call() {
    return photoRepository.getPhoto();
  }
}