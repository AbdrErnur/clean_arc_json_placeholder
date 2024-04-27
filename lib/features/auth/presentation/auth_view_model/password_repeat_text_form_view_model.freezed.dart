// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_repeat_text_form_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PasswordRepeatTextFormViewModel {
  String get value => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get isValidate => throw _privateConstructorUsedError;
  bool get isObscured => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordRepeatTextFormViewModelCopyWith<PasswordRepeatTextFormViewModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordRepeatTextFormViewModelCopyWith<$Res> {
  factory $PasswordRepeatTextFormViewModelCopyWith(
          PasswordRepeatTextFormViewModel value,
          $Res Function(PasswordRepeatTextFormViewModel) then) =
      _$PasswordRepeatTextFormViewModelCopyWithImpl<$Res,
          PasswordRepeatTextFormViewModel>;
  @useResult
  $Res call(
      {String value, String? errorMessage, bool isValidate, bool isObscured});
}

/// @nodoc
class _$PasswordRepeatTextFormViewModelCopyWithImpl<$Res,
        $Val extends PasswordRepeatTextFormViewModel>
    implements $PasswordRepeatTextFormViewModelCopyWith<$Res> {
  _$PasswordRepeatTextFormViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? errorMessage = freezed,
    Object? isValidate = null,
    Object? isObscured = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isValidate: null == isValidate
          ? _value.isValidate
          : isValidate // ignore: cast_nullable_to_non_nullable
              as bool,
      isObscured: null == isObscured
          ? _value.isObscured
          : isObscured // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PasswordRepeatTextFormViewModelImplCopyWith<$Res>
    implements $PasswordRepeatTextFormViewModelCopyWith<$Res> {
  factory _$$PasswordRepeatTextFormViewModelImplCopyWith(
          _$PasswordRepeatTextFormViewModelImpl value,
          $Res Function(_$PasswordRepeatTextFormViewModelImpl) then) =
      __$$PasswordRepeatTextFormViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String value, String? errorMessage, bool isValidate, bool isObscured});
}

/// @nodoc
class __$$PasswordRepeatTextFormViewModelImplCopyWithImpl<$Res>
    extends _$PasswordRepeatTextFormViewModelCopyWithImpl<$Res,
        _$PasswordRepeatTextFormViewModelImpl>
    implements _$$PasswordRepeatTextFormViewModelImplCopyWith<$Res> {
  __$$PasswordRepeatTextFormViewModelImplCopyWithImpl(
      _$PasswordRepeatTextFormViewModelImpl _value,
      $Res Function(_$PasswordRepeatTextFormViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? errorMessage = freezed,
    Object? isValidate = null,
    Object? isObscured = null,
  }) {
    return _then(_$PasswordRepeatTextFormViewModelImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isValidate: null == isValidate
          ? _value.isValidate
          : isValidate // ignore: cast_nullable_to_non_nullable
              as bool,
      isObscured: null == isObscured
          ? _value.isObscured
          : isObscured // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PasswordRepeatTextFormViewModelImpl
    implements _PasswordRepeatTextFormViewModel {
  const _$PasswordRepeatTextFormViewModelImpl(
      {this.value = '',
      this.errorMessage,
      this.isValidate = false,
      this.isObscured = false});

  @override
  @JsonKey()
  final String value;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final bool isValidate;
  @override
  @JsonKey()
  final bool isObscured;

  @override
  String toString() {
    return 'PasswordRepeatTextFormViewModel(value: $value, errorMessage: $errorMessage, isValidate: $isValidate, isObscured: $isObscured)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordRepeatTextFormViewModelImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isValidate, isValidate) ||
                other.isValidate == isValidate) &&
            (identical(other.isObscured, isObscured) ||
                other.isObscured == isObscured));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, value, errorMessage, isValidate, isObscured);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordRepeatTextFormViewModelImplCopyWith<
          _$PasswordRepeatTextFormViewModelImpl>
      get copyWith => __$$PasswordRepeatTextFormViewModelImplCopyWithImpl<
          _$PasswordRepeatTextFormViewModelImpl>(this, _$identity);
}

abstract class _PasswordRepeatTextFormViewModel
    implements PasswordRepeatTextFormViewModel {
  const factory _PasswordRepeatTextFormViewModel(
      {final String value,
      final String? errorMessage,
      final bool isValidate,
      final bool isObscured}) = _$PasswordRepeatTextFormViewModelImpl;

  @override
  String get value;
  @override
  String? get errorMessage;
  @override
  bool get isValidate;
  @override
  bool get isObscured;
  @override
  @JsonKey(ignore: true)
  _$$PasswordRepeatTextFormViewModelImplCopyWith<
          _$PasswordRepeatTextFormViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
