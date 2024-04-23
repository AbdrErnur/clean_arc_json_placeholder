// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthPageState {
  EmailTextFormViewModel get emailTextFormViewModel =>
      throw _privateConstructorUsedError;
  PasswordTextFormViewModel get passwordTextFormViewModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthPageStateCopyWith<AuthPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthPageStateCopyWith<$Res> {
  factory $AuthPageStateCopyWith(
          AuthPageState value, $Res Function(AuthPageState) then) =
      _$AuthPageStateCopyWithImpl<$Res, AuthPageState>;
  @useResult
  $Res call(
      {EmailTextFormViewModel emailTextFormViewModel,
      PasswordTextFormViewModel passwordTextFormViewModel});

  $EmailTextFormViewModelCopyWith<$Res> get emailTextFormViewModel;
  $PasswordTextFormViewModelCopyWith<$Res> get passwordTextFormViewModel;
}

/// @nodoc
class _$AuthPageStateCopyWithImpl<$Res, $Val extends AuthPageState>
    implements $AuthPageStateCopyWith<$Res> {
  _$AuthPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailTextFormViewModel = null,
    Object? passwordTextFormViewModel = null,
  }) {
    return _then(_value.copyWith(
      emailTextFormViewModel: null == emailTextFormViewModel
          ? _value.emailTextFormViewModel
          : emailTextFormViewModel // ignore: cast_nullable_to_non_nullable
              as EmailTextFormViewModel,
      passwordTextFormViewModel: null == passwordTextFormViewModel
          ? _value.passwordTextFormViewModel
          : passwordTextFormViewModel // ignore: cast_nullable_to_non_nullable
              as PasswordTextFormViewModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EmailTextFormViewModelCopyWith<$Res> get emailTextFormViewModel {
    return $EmailTextFormViewModelCopyWith<$Res>(_value.emailTextFormViewModel,
        (value) {
      return _then(_value.copyWith(emailTextFormViewModel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PasswordTextFormViewModelCopyWith<$Res> get passwordTextFormViewModel {
    return $PasswordTextFormViewModelCopyWith<$Res>(
        _value.passwordTextFormViewModel, (value) {
      return _then(_value.copyWith(passwordTextFormViewModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthPageStateImplCopyWith<$Res>
    implements $AuthPageStateCopyWith<$Res> {
  factory _$$AuthPageStateImplCopyWith(
          _$AuthPageStateImpl value, $Res Function(_$AuthPageStateImpl) then) =
      __$$AuthPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailTextFormViewModel emailTextFormViewModel,
      PasswordTextFormViewModel passwordTextFormViewModel});

  @override
  $EmailTextFormViewModelCopyWith<$Res> get emailTextFormViewModel;
  @override
  $PasswordTextFormViewModelCopyWith<$Res> get passwordTextFormViewModel;
}

/// @nodoc
class __$$AuthPageStateImplCopyWithImpl<$Res>
    extends _$AuthPageStateCopyWithImpl<$Res, _$AuthPageStateImpl>
    implements _$$AuthPageStateImplCopyWith<$Res> {
  __$$AuthPageStateImplCopyWithImpl(
      _$AuthPageStateImpl _value, $Res Function(_$AuthPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailTextFormViewModel = null,
    Object? passwordTextFormViewModel = null,
  }) {
    return _then(_$AuthPageStateImpl(
      emailTextFormViewModel: null == emailTextFormViewModel
          ? _value.emailTextFormViewModel
          : emailTextFormViewModel // ignore: cast_nullable_to_non_nullable
              as EmailTextFormViewModel,
      passwordTextFormViewModel: null == passwordTextFormViewModel
          ? _value.passwordTextFormViewModel
          : passwordTextFormViewModel // ignore: cast_nullable_to_non_nullable
              as PasswordTextFormViewModel,
    ));
  }
}

/// @nodoc

class _$AuthPageStateImpl implements _AuthPageState {
  const _$AuthPageStateImpl(
      {required this.emailTextFormViewModel,
      required this.passwordTextFormViewModel});

  @override
  final EmailTextFormViewModel emailTextFormViewModel;
  @override
  final PasswordTextFormViewModel passwordTextFormViewModel;

  @override
  String toString() {
    return 'AuthPageState(emailTextFormViewModel: $emailTextFormViewModel, passwordTextFormViewModel: $passwordTextFormViewModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthPageStateImpl &&
            (identical(other.emailTextFormViewModel, emailTextFormViewModel) ||
                other.emailTextFormViewModel == emailTextFormViewModel) &&
            (identical(other.passwordTextFormViewModel,
                    passwordTextFormViewModel) ||
                other.passwordTextFormViewModel == passwordTextFormViewModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, emailTextFormViewModel, passwordTextFormViewModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthPageStateImplCopyWith<_$AuthPageStateImpl> get copyWith =>
      __$$AuthPageStateImplCopyWithImpl<_$AuthPageStateImpl>(this, _$identity);
}

abstract class _AuthPageState implements AuthPageState {
  const factory _AuthPageState(
          {required final EmailTextFormViewModel emailTextFormViewModel,
          required final PasswordTextFormViewModel passwordTextFormViewModel}) =
      _$AuthPageStateImpl;

  @override
  EmailTextFormViewModel get emailTextFormViewModel;
  @override
  PasswordTextFormViewModel get passwordTextFormViewModel;
  @override
  @JsonKey(ignore: true)
  _$$AuthPageStateImplCopyWith<_$AuthPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
