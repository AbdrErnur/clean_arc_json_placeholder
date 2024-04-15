import 'package:zagruzka_ekrana/domain/entities/post_entity.dart';
import 'package:zagruzka_ekrana/domain/repositories/post_repository.dart';

class GetPostUsecase{
  final PostRepository postsRepository;

  GetPostUsecase(this.postsRepository);

  Future<List<PostEntity>> call(){
    return postsRepository.getPost();
  }
}