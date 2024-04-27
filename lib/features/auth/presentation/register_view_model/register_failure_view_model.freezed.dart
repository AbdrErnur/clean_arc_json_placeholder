// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_failure_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterFailureViewModel {
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterFailureViewModelCopyWith<RegisterFailureViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterFailureViewModelCopyWith<$Res> {
  factory $RegisterFailureViewModelCopyWith(RegisterFailureViewModel value,
          $Res Function(RegisterFailureViewModel) then) =
      _$RegisterFailureViewModelCopyWithImpl<$Res, RegisterFailureViewModel>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$RegisterFailureViewModelCopyWithImpl<$Res,
        $Val extends RegisterFailureViewModel>
    implements $RegisterFailureViewModelCopyWith<$Res> {
  _$RegisterFailureViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterFailureViewModelImplCopyWith<$Res>
    implements $RegisterFailureViewModelCopyWith<$Res> {
  factory _$$RegisterFailureViewModelImplCopyWith(
          _$RegisterFailureViewModelImpl value,
          $Res Function(_$RegisterFailureViewModelImpl) then) =
      __$$RegisterFailureViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$RegisterFailureViewModelImplCopyWithImpl<$Res>
    extends _$RegisterFailureViewModelCopyWithImpl<$Res,
        _$RegisterFailureViewModelImpl>
    implements _$$RegisterFailureViewModelImplCopyWith<$Res> {
  __$$RegisterFailureViewModelImplCopyWithImpl(
      _$RegisterFailureViewModelImpl _value,
      $Res Function(_$RegisterFailureViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$RegisterFailureViewModelImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterFailureViewModelImpl implements _RegisterFailureViewModel {
  const _$RegisterFailureViewModelImpl({this.error = ''});

  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'RegisterFailureViewModel(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterFailureViewModelImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterFailureViewModelImplCopyWith<_$RegisterFailureViewModelImpl>
      get copyWith => __$$RegisterFailureViewModelImplCopyWithImpl<
          _$RegisterFailureViewModelImpl>(this, _$identity);
}

abstract class _RegisterFailureViewModel implements RegisterFailureViewModel {
  const factory _RegisterFailureViewModel({final String error}) =
      _$RegisterFailureViewModelImpl;

  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$RegisterFailureViewModelImplCopyWith<_$RegisterFailureViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
