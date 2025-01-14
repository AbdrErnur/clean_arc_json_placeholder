// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_entity_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserEntityViewModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get website => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserEntityViewModelCopyWith<UserEntityViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEntityViewModelCopyWith<$Res> {
  factory $UserEntityViewModelCopyWith(
          UserEntityViewModel value, $Res Function(UserEntityViewModel) then) =
      _$UserEntityViewModelCopyWithImpl<$Res, UserEntityViewModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String username,
      String email,
      String phone,
      String website});
}

/// @nodoc
class _$UserEntityViewModelCopyWithImpl<$Res, $Val extends UserEntityViewModel>
    implements $UserEntityViewModelCopyWith<$Res> {
  _$UserEntityViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? username = null,
    Object? email = null,
    Object? phone = null,
    Object? website = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserEntityViewModelImplCopyWith<$Res>
    implements $UserEntityViewModelCopyWith<$Res> {
  factory _$$UserEntityViewModelImplCopyWith(_$UserEntityViewModelImpl value,
          $Res Function(_$UserEntityViewModelImpl) then) =
      __$$UserEntityViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String username,
      String email,
      String phone,
      String website});
}

/// @nodoc
class __$$UserEntityViewModelImplCopyWithImpl<$Res>
    extends _$UserEntityViewModelCopyWithImpl<$Res, _$UserEntityViewModelImpl>
    implements _$$UserEntityViewModelImplCopyWith<$Res> {
  __$$UserEntityViewModelImplCopyWithImpl(_$UserEntityViewModelImpl _value,
      $Res Function(_$UserEntityViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? username = null,
    Object? email = null,
    Object? phone = null,
    Object? website = null,
  }) {
    return _then(_$UserEntityViewModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserEntityViewModelImpl implements _UserEntityViewModel {
  const _$UserEntityViewModelImpl(
      {required this.id,
      required this.name,
      required this.username,
      required this.email,
      required this.phone,
      required this.website});

  @override
  final int id;
  @override
  final String name;
  @override
  final String username;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String website;

  @override
  String toString() {
    return 'UserEntityViewModel(id: $id, name: $name, username: $username, email: $email, phone: $phone, website: $website)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEntityViewModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.website, website) || other.website == website));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, username, email, phone, website);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEntityViewModelImplCopyWith<_$UserEntityViewModelImpl> get copyWith =>
      __$$UserEntityViewModelImplCopyWithImpl<_$UserEntityViewModelImpl>(
          this, _$identity);
}

abstract class _UserEntityViewModel implements UserEntityViewModel {
  const factory _UserEntityViewModel(
      {required final int id,
      required final String name,
      required final String username,
      required final String email,
      required final String phone,
      required final String website}) = _$UserEntityViewModelImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String get username;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get website;
  @override
  @JsonKey(ignore: true)
  _$$UserEntityViewModelImplCopyWith<_$UserEntityViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
