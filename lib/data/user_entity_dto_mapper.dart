import 'package:zagruzka_ekrana/data/dto_entities/address_entity_dto.dart';
import 'package:zagruzka_ekrana/data/dto_entities/company_entity_dto.dart';
import 'package:zagruzka_ekrana/data/dto_entities/geo_entity_dto.dart';
import 'package:zagruzka_ekrana/data/dto_entities/user_entity_dto.dart';
import 'package:zagruzka_ekrana/domain/entities/address_entity.dart';
import 'package:zagruzka_ekrana/domain/entities/company_entity.dart';
import 'package:zagruzka_ekrana/domain/entities/geo_entity.dart';
import 'package:zagruzka_ekrana/domain/entities/user_entity.dart';

extension UserEntityDtoMapper on UserEntityDto {
  UserEntity toEntity() {
    return UserEntity(
      id: id,
      name: name,
      username: username,
      email: email,
      address: address.toEntity(),
      phone: phone,
      website: website,
      company: company.toEntity(),
    );
  }
}

extension AddressDtoMapper on AddressEntityDto {
  AddressEntity toEntity() {
    return AddressEntity(
      street: street,
      suite: suite,
      city: city,
      zipcode: zipcode,
      geo: geo.toEntity(),
    );
  }
}

extension CompanyDtoMapper on CompanyEntityDto {
  CompanyEntity toEntity() {
    return CompanyEntity(
      name: name,
      catchPhrase: catchPhrase,
      bs: bs,
    );
  }
}

extension GeoMapper on GeoEntityDto {
  GeoEntity toEntity() {
    return GeoEntity(
      lat: lat,
      lng: lng,
    );
  }
}
