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
  $Res call({String value, String errorMessage});
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
abstract class _$$EmailTextFormViewModelImplCopyWith<$Res>
    implements $EmailTextFormViewModelCopyWith<$Res> {
  factory _$$EmailTextFormViewModelImplCopyWith(
          _$EmailTextFormViewModelImpl value,
          $Res Function(_$EmailTextFormViewModelImpl) then) =
      __$$EmailTextFormViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, String errorMessage});
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
    ));
  }
}

/// @nodoc

class _$EmailTextFormViewModelImpl implements _EmailTextFormViewModel {
  const _$EmailTextFormViewModelImpl(
      {required this.value, required this.errorMessage});

  @override
  final String value;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'EmailTextFormViewModel(value: $value, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailTextFormViewModelImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailTextFormViewModelImplCopyWith<_$EmailTextFormViewModelImpl>
      get copyWith => __$$EmailTextFormViewModelImplCopyWithImpl<
          _$EmailTextFormViewModelImpl>(this, _$identity);
}

abstract class _EmailTextFormViewModel implements EmailTextFormViewModel {
  const factory _EmailTextFormViewModel(
      {required final String value,
      required final String errorMessage}) = _$EmailTextFormViewModelImpl;

  @override
  String get value;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$EmailTextFormViewModelImplCopyWith<_$EmailTextFormViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
