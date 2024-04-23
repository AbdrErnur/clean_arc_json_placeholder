
import 'package:zagruzka_ekrana/src/data/dto_entities/comment_entity_dto.dart';
import 'package:zagruzka_ekrana/src/domain/entities/comment_entity.dart';

extension CommentEntityDtoMapper on CommentEntityDto{
  CommentEntity toEntity(){
    return CommentEntity(
      postId: postId,
      id: id,
      name: name,
      email: email,
      body: body,
    );
  }
}