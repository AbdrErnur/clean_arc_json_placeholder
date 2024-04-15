import 'package:zagruzka_ekrana/domain/entities/album_entity.dart';
import 'package:zagruzka_ekrana/presentation/view_models/album_view_model.dart';

extension AlbumViewModelMapper on AlbumViewModel {
  static AlbumViewModel toViewModel(AlbumEntity album) {
    return AlbumViewModel(
      userId: album.userId,
      id: album.id,
      title: album.title,
    );
  }
}
