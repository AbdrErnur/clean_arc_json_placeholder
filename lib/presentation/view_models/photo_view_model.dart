import 'package:freezed_annotation/freezed_annotation.dart';
part 'photo_view_model.freezed.dart';

@freezed
class PhotoViewModel with _$PhotoViewModel {
  factory PhotoViewModel({
    required int albomId,
    required int id,
    required String title,
    required String url,
    required String thumbnailUrl,
})=_PhotoViewModel;

}