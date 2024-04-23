import 'package:zagruzka_ekrana/src/domain/entities/photo_entity.dart';
import 'package:zagruzka_ekrana/src/presentation/view_models/photo_view_model.dart';

class PhotoViewModelMapper {
  static PhotoViewModel toViewModel(PhotoEntity photo) {
    return PhotoViewModel(
      albumId: photo.albumId,
      id: photo.id,
      title: photo.title,
      url: photo.url,
      thumbnailUrl: photo.thumbnailUrl,
    );
  }
}
