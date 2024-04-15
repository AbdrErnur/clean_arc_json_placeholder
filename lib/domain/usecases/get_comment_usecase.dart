import 'package:zagruzka_ekrana/domain/entities/comment_entity.dart';
import 'package:zagruzka_ekrana/domain/repositories/comment_repository.dart';

class GetCommentUsecase{
  final CommentRepository commentRepository;

  GetCommentUsecase(this.commentRepository);

  Future<List<CommentEntity>> call(){
    return commentRepository.getComment();
  }
}