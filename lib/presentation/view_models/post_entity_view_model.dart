import 'package:freezed_annotation/freezed_annotation.dart';
part 'post_entity_view_model.freezed.dart';

@freezed
class PostEntityViewModel with _$PostEntityViewModel {
  const factory PostEntityViewModel({
    required int userId,
    required int id,
    required String title,
    required String body,
  })=_PostEntityViewModel;
}

