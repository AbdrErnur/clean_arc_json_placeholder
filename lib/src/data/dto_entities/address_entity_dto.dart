import 'geo_entity_dto.dart';
import 'package:json_annotation/json_annotation.dart';
part 'address_entity_dto.g.dart';



@JsonSerializable(explicitToJson: true)
class AddressEntityDto {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final GeoEntityDto geo;

  AddressEntityDto({required this.street,required this.suite,required this.city,required this.zipcode,required this.geo,});

  factory AddressEntityDto.fromJson(Map<String, dynamic> json) => _$AddressEntityDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AddressEntityDtoToJson(this);
}