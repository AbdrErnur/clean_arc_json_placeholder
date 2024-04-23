import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_entity_view_model.freezed.dart';

@freezed
class UserEntityViewModel with _$UserEntityViewModel {
  const factory UserEntityViewModel({
    required int id,
    required String name,
    required String username,
    required String email,
    required String phone,
    required String website,
  })=_UserEntityViewModel;

}
