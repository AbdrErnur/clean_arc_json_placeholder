// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_text_form_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmailTextFormViewModel {
  String get value => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailTextFormViewModelCopyWith<EmailTextFormViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailTextFormViewModelCopyWith<$Res> {
  factory $EmailTextFormViewModelCopyWith(EmailTextFormViewModel value,
          $Res Function(EmailTextFormViewModel) then) =
      _$EmailTextFormViewModelCopyWithImpl<$Res, EmailTextFormViewModel>;
  @useResult
  $Res call({String value, String errorMessage, bool isValid});
}

/// @nodoc
class _$EmailTextFormViewModelCopyWithImpl<$Res,
        $Val extends EmailTextFormViewModel>
    implements $EmailTextFormViewModelCopyWith<$Res> {
  _$EmailTextFormViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? errorMessage = null,
    Object? isValid = null,
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
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmailTextFormViewModelImplCopyWith<$Res>
    implements $EmailTextFormViewModelCopyWith<$Res> {
  factory _$$EmailTextFormViewModelImplCopyWith(
          _$EmailTextFormViewModelImpl value,
          $Res Function(_$EmailTextFormViewModelImpl) then) =
      __$$EmailTextFormViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, String errorMessage, bool isValid});
}

/// @nodoc
class __$$EmailTextFormViewModelImplCopyWithImpl<$Res>
    extends _$EmailTextFormViewModelCopyWithImpl<$Res,
        _$EmailTextFormViewModelImpl>
    implements _$$EmailTextFormViewModelImplCopyWith<$Res> {
  __$$EmailTextFormViewModelImplCopyWithImpl(
      _$EmailTextFormViewModelImpl _value,
      $Res Function(_$EmailTextFormViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? errorMessage = null,
    Object? isValid = null,
  }) {
    return _then(_$EmailTextFormViewModelImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EmailTextFormViewModelImpl implements _EmailTextFormViewModel {
  const _$EmailTextFormViewModelImpl(
      {this.value = '', this.errorMessage = '', this.isValid = true});

  @override
  @JsonKey()
  final String value;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final bool isValid;

  @override
  String toString() {
    return 'EmailTextFormViewModel(value: $value, errorMessage: $errorMessage, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailTextFormViewModelImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, errorMessage, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailTextFormViewModelImplCopyWith<_$EmailTextFormViewModelImpl>
      get copyWith => __$$EmailTextFormViewModelImplCopyWithImpl<
          _$EmailTextFormViewModelImpl>(this, _$identity);
}

abstract class _EmailTextFormViewModel implements EmailTextFormViewModel {
  const factory _EmailTextFormViewModel(
      {final String value,
      final String errorMessage,
      final bool isValid}) = _$EmailTextFormViewModelImpl;

  @override
  String get value;
  @override
  String get errorMessage;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$EmailTextFormViewModelImplCopyWith<_$EmailTextFormViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
