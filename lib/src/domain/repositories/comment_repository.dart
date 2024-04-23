
import 'package:zagruzka_ekrana/src/domain/entities/comment_entity.dart';

abstract interface class CommentRepository{
  Future<List<CommentEntity>> getComment();
}