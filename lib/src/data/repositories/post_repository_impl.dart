import 'package:zagruzka_ekrana/src/data/data_source/data_source.dart';
import 'package:zagruzka_ekrana/src/data/post_entity_dto_mapper.dart';
import 'package:zagruzka_ekrana/src/domain/entities/post_entity.dart';
import 'package:zagruzka_ekrana/src/domain/repositories/post_repository.dart';

class PostRepositoryImpl implements PostRepository{
  final DataSource dataSource;

  PostRepositoryImpl(this.dataSource);



  @override
  Future<List<PostEntity>> getPost() async {
    final post = await dataSource.getPost();
    final List<PostEntity> listPost = post.map((e) => e.toEntity()).toList();

    return listPost;
  }

}