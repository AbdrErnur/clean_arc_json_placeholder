
import 'package:zagruzka_ekrana/src/data/comment_entity_dto_mapper.dart';
import 'package:zagruzka_ekrana/src/data/data_source/data_source.dart';
import 'package:zagruzka_ekrana/src/domain/entities/comment_entity.dart';
import 'package:zagruzka_ekrana/src/domain/repositories/comment_repository.dart';

class CommentRepositoryImpl implements CommentRepository{
  final DataSource dataSource;

  CommentRepositoryImpl(this.dataSource);

  @override
  Future<List<CommentEntity>> getComment() async {
    final comment = await dataSource.getComment();
    final List<CommentEntity> listComment = comment.map((e) => e.toEntity()).toList() ;
    return listComment;
  }
}