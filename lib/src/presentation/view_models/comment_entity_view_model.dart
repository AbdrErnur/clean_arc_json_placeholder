import 'package:freezed_annotation/freezed_annotation.dart';
part 'comment_entity_view_model.freezed.dart';


@freezed
class CommentEntityViewModel with _$CommentEntityViewModel{
  const factory CommentEntityViewModel({
    required int postId,
    required int id,
    required String name,
    required String email,
    required String body,
})=_CommentEntityViewModel;


}