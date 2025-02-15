import 'package:zagruzka_ekrana/domain/entities/post_entity.dart';
import 'package:zagruzka_ekrana/presentation/view_models/post_entity_view_model.dart';

class PostEntityViewModelMapper {
  static PostEntityViewModel toViewModel(PostEntity post) {
    return PostEntityViewModel(
        userId: post.userId,
        id: post.id,
        title: post.title,
        body: post.body);
  }
}
