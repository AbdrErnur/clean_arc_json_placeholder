// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_text_form_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PasswordTextFormViewModel {
  String get value => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordTextFormViewModelCopyWith<PasswordTextFormViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordTextFormViewModelCopyWith<$Res> {
  factory $PasswordTextFormViewModelCopyWith(PasswordTextFormViewModel value,
          $Res Function(PasswordTextFormViewModel) then) =
      _$PasswordTextFormViewModelCopyWithImpl<$Res, PasswordTextFormViewModel>;
  @useResult
  $Res call({String value, String errorMessage});
}

/// @nodoc
class _$PasswordTextFormViewModelCopyWithImpl<$Res,
        $Val extends PasswordTextFormViewModel>
    implements $PasswordTextFormViewModelCopyWith<$Res> {
  _$PasswordTextFormViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PasswordTextFormViewModelImplCopyWith<$Res>
    implements $PasswordTextFormViewModelCopyWith<$Res> {
  factory _$$PasswordTextFormViewModelImplCopyWith(
          _$PasswordTextFormViewModelImpl value,
          $Res Function(_$PasswordTextFormViewModelImpl) then) =
      __$$PasswordTextFormViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, String errorMessage});
}

/// @nodoc
class __$$PasswordTextFormViewModelImplCopyWithImpl<$Res>
    extends _$PasswordTextFormViewModelCopyWithImpl<$Res,
        _$PasswordTextFormViewModelImpl>
    implements _$$PasswordTextFormViewModelImplCopyWith<$Res> {
  __$$PasswordTextFormViewModelImplCopyWithImpl(
      _$PasswordTextFormViewModelImpl _value,
      $Res Function(_$PasswordTextFormViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? errorMessage = null,
  }) {
    return _then(_$PasswordTextFormViewModelImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordTextFormViewModelImpl implements _PasswordTextFormViewModel {
  const _$PasswordTextFormViewModelImpl(
      {required this.value, required this.errorMessage});

  @override
  final String value;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'PasswordTextFormViewModel(value: $value, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordTextFormViewModelImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordTextFormViewModelImplCopyWith<_$PasswordTextFormViewModelImpl>
      get copyWith => __$$PasswordTextFormViewModelImplCopyWithImpl<
          _$PasswordTextFormViewModelImpl>(this, _$identity);
}

abstract class _PasswordTextFormViewModel implements PasswordTextFormViewModel {
  const factory _PasswordTextFormViewModel(
      {required final String value,
      required final String errorMessage}) = _$PasswordTextFormViewModelImpl;

  @override
  String get value;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$PasswordTextFormViewModelImplCopyWith<_$PasswordTextFormViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
