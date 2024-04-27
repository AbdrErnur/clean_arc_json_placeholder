// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountEntityViewModel {
  String get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountEntityViewModelCopyWith<AccountEntityViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountEntityViewModelCopyWith<$Res> {
  factory $AccountEntityViewModelCopyWith(AccountEntityViewModel value,
          $Res Function(AccountEntityViewModel) then) =
      _$AccountEntityViewModelCopyWithImpl<$Res, AccountEntityViewModel>;
  @useResult
  $Res call({String id, String? email});
}

/// @nodoc
class _$AccountEntityViewModelCopyWithImpl<$Res,
        $Val extends AccountEntityViewModel>
    implements $AccountEntityViewModelCopyWith<$Res> {
  _$AccountEntityViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountEntityViewModelImplCopyWith<$Res>
    implements $AccountEntityViewModelCopyWith<$Res> {
  factory _$$AccountEntityViewModelImplCopyWith(
          _$AccountEntityViewModelImpl value,
          $Res Function(_$AccountEntityViewModelImpl) then) =
      __$$AccountEntityViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String? email});
}

/// @nodoc
class __$$AccountEntityViewModelImplCopyWithImpl<$Res>
    extends _$AccountEntityViewModelCopyWithImpl<$Res,
        _$AccountEntityViewModelImpl>
    implements _$$AccountEntityViewModelImplCopyWith<$Res> {
  __$$AccountEntityViewModelImplCopyWithImpl(
      _$AccountEntityViewModelImpl _value,
      $Res Function(_$AccountEntityViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = freezed,
  }) {
    return _then(_$AccountEntityViewModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AccountEntityViewModelImpl implements _AccountEntityViewModel {
  const _$AccountEntityViewModelImpl({required this.id, required this.email});

  @override
  final String id;
  @override
  final String? email;

  @override
  String toString() {
    return 'AccountEntityViewModel(id: $id, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountEntityViewModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountEntityViewModelImplCopyWith<_$AccountEntityViewModelImpl>
      get copyWith => __$$AccountEntityViewModelImplCopyWithImpl<
          _$AccountEntityViewModelImpl>(this, _$identity);
}

abstract class _AccountEntityViewModel implements AccountEntityViewModel {
  const factory _AccountEntityViewModel(
      {required final String id,
      required final String? email}) = _$AccountEntityViewModelImpl;

  @override
  String get id;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$AccountEntityViewModelImplCopyWith<_$AccountEntityViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
