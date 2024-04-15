import 'package:zagruzka_ekrana/domain/entities/photo_entity.dart';

abstract interface class PhotoRepository{
 Future<List<PhotoEntity>> getPhoto();
}