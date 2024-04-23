
import 'package:zagruzka_ekrana/src/domain/entities/post_entity.dart';

abstract interface class PostRepository{
  Future<List<PostEntity>> getPost();
}