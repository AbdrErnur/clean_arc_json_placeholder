import 'package:zagruzka_ekrana/domain/entities/photo_entity.dart';
import 'package:zagruzka_ekrana/presentation/view_models/photo_view_model.dart';

class PhotoViewModelMapper {
  static PhotoViewModel toViewModel(PhotoEntity photo) {
    return PhotoViewModel(
      albomId: photo.albumId,
      id: photo.id,
      title: photo.title,
      url: photo.url,
      thumbnailUrl: photo.thumbnailUrl,
    );
  }
}
