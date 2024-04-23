import 'package:firebase_auth/firebase_auth.dart';
import 'package:zagruzka_ekrana/features/auth/domain/entities/account_entity.dart';

extension UserMapper on User {
  Future<AccountEntity> toEntity() async {
    return AccountEntity(
      id: uid,
      email: email,
    );
  }
}
