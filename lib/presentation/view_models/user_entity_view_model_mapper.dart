import 'package:zagruzka_ekrana/domain/entities/user_entity.dart';
import 'package:zagruzka_ekrana/presentation/view_models/user_entity_view_model.dart';

class UserEntityViewModelMapper {
  static UserEntityViewModel toViewModel(UserEntity user) {
    return UserEntityViewModel(
      id: user.id,
      name: user.name,
      username: user.username,
      email: user.email,
      phone: user.phone,
      website: user.website,
    );
  }
}
