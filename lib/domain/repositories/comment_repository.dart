import 'package:zagruzka_ekrana/domain/entities/comment_entity.dart';

abstract interface class CommentRepository{
  Future<List<CommentEntity>> getComment();
}