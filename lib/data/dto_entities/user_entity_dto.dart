import 'address_entity_dto.dart';
import 'company_entity_dto.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user_entity_dto.g.dart';


@JsonSerializable(explicitToJson: true)
class UserEntityDto { //DTO - Data Transfer Object - объект переноса данных
  final int id;
  final String name;
  final String username;
  final String email;
  final AddressEntityDto address;
  final String phone;
  final String website;
  final CompanyEntityDto company;

  UserEntityDto(
      {required this.id,
      required this.name,
      required this.username,
      required this.email,
      required this.address,
      required this.phone,
      required this.website,
      required this.company});

  factory UserEntityDto.fromJson(Map<String, dynamic> json) =>
      _$UserEntityDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserEntityDtoToJson(this);
}
