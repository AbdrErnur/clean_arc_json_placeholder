// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) editEmail,
    required TResult Function(String password) editPassword,
    required TResult Function(String confirmationPassword)
        editConfirmationPassword,
    required TResult Function() togglePasswordObscure,
    required TResult Function() toggleConfirmationPasswordObscure,
    required TResult Function() sendData,
    required TResult Function() clearErrors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? editEmail,
    TResult? Function(String password)? editPassword,
    TResult? Function(String confirmationPassword)? editConfirmationPassword,
    TResult? Function()? togglePasswordObscure,
    TResult? Function()? toggleConfirmationPasswordObscure,
    TResult? Function()? sendData,
    TResult? Function()? clearErrors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? editEmail,
    TResult Function(String password)? editPassword,
    TResult Function(String confirmationPassword)? editConfirmationPassword,
    TResult Function()? togglePasswordObscure,
    TResult Function()? toggleConfirmationPasswordObscure,
    TResult Function()? sendData,
    TResult Function()? clearErrors,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditEmailEvent value) editEmail,
    required TResult Function(EditPasswordEvent value) editPassword,
    required TResult Function(EditConfirmationPasswordEvent value)
        editConfirmationPassword,
    required TResult Function(TogglePasswordObscureEvent value)
        togglePasswordObscure,
    required TResult Function(ToggleConfirmationPasswordObscureEvent value)
        toggleConfirmationPasswordObscure,
    required TResult Function(SendDataEvent value) sendData,
    required TResult Function(ClearError value) clearErrors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditEmailEvent value)? editEmail,
    TResult? Function(EditPasswordEvent value)? editPassword,
    TResult? Function(EditConfirmationPasswordEvent value)?
        editConfirmationPassword,
    TResult? Function(TogglePasswordObscureEvent value)? togglePasswordObscure,
    TResult? Function(ToggleConfirmationPasswordObscureEvent value)?
        toggleConfirmationPasswordObscure,
    TResult? Function(SendDataEvent value)? sendData,
    TResult? Function(ClearError value)? clearErrors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditEmailEvent value)? editEmail,
    TResult Function(EditPasswordEvent value)? editPassword,
    TResult Function(EditConfirmationPasswordEvent value)?
        editConfirmationPassword,
    TResult Function(TogglePasswordObscureEvent value)? togglePasswordObscure,
    TResult Function(ToggleConfirmationPasswordObscureEvent value)?
        toggleConfirmationPasswordObscure,
    TResult Function(SendDataEvent value)? sendData,
    TResult Function(ClearError value)? clearErrors,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterPageEventCopyWith<$Res> {
  factory $RegisterPageEventCopyWith(
          RegisterPageEvent value, $Res Function(RegisterPageEvent) then) =
      _$RegisterPageEventCopyWithImpl<$Res, RegisterPageEvent>;
}

/// @nodoc
class _$RegisterPageEventCopyWithImpl<$Res, $Val extends RegisterPageEvent>
    implements $RegisterPageEventCopyWith<$Res> {
  _$RegisterPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EditEmailEventImplCopyWith<$Res> {
  factory _$$EditEmailEventImplCopyWith(_$EditEmailEventImpl value,
          $Res Function(_$EditEmailEventImpl) then) =
      __$$EditEmailEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EditEmailEventImplCopyWithImpl<$Res>
    extends _$RegisterPageEventCopyWithImpl<$Res, _$EditEmailEventImpl>
    implements _$$EditEmailEventImplCopyWith<$Res> {
  __$$EditEmailEventImplCopyWithImpl(
      _$EditEmailEventImpl _value, $Res Function(_$EditEmailEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EditEmailEventImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditEmailEventImpl implements EditEmailEvent {
  const _$EditEmailEventImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'RegisterPageEvent.editEmail(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditEmailEventImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditEmailEventImplCopyWith<_$EditEmailEventImpl> get copyWith =>
      __$$EditEmailEventImplCopyWithImpl<_$EditEmailEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) editEmail,
    required TResult Function(String password) editPassword,
    required TResult Function(String confirmationPassword)
        editConfirmationPassword,
    required TResult Function() togglePasswordObscure,
    required TResult Function() toggleConfirmationPasswordObscure,
    required TResult Function() sendData,
    required TResult Function() clearErrors,
  }) {
    return editEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? editEmail,
    TResult? Function(String password)? editPassword,
    TResult? Function(String confirmationPassword)? editConfirmationPassword,
    TResult? Function()? togglePasswordObscure,
    TResult? Function()? toggleConfirmationPasswordObscure,
    TResult? Function()? sendData,
    TResult? Function()? clearErrors,
  }) {
    return editEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? editEmail,
    TResult Function(String password)? editPassword,
    TResult Function(String confirmationPassword)? editConfirmationPassword,
    TResult Function()? togglePasswordObscure,
    TResult Function()? toggleConfirmationPasswordObscure,
    TResult Function()? sendData,
    TResult Function()? clearErrors,
    required TResult orElse(),
  }) {
    if (editEmail != null) {
      return editEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditEmailEvent value) editEmail,
    required TResult Function(EditPasswordEvent value) editPassword,
    required TResult Function(EditConfirmationPasswordEvent value)
        editConfirmationPassword,
    required TResult Function(TogglePasswordObscureEvent value)
        togglePasswordObscure,
    required TResult Function(ToggleConfirmationPasswordObscureEvent value)
        toggleConfirmationPasswordObscure,
    required TResult Function(SendDataEvent value) sendData,
    required TResult Function(ClearError value) clearErrors,
  }) {
    return editEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditEmailEvent value)? editEmail,
    TResult? Function(EditPasswordEvent value)? editPassword,
    TResult? Function(EditConfirmationPasswordEvent value)?
        editConfirmationPassword,
    TResult? Function(TogglePasswordObscureEvent value)? togglePasswordObscure,
    TResult? Function(ToggleConfirmationPasswordObscureEvent value)?
        toggleConfirmationPasswordObscure,
    TResult? Function(SendDataEvent value)? sendData,
    TResult? Function(ClearError value)? clearErrors,
  }) {
    return editEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditEmailEvent value)? editEmail,
    TResult Function(EditPasswordEvent value)? editPassword,
    TResult Function(EditConfirmationPasswordEvent value)?
        editConfirmationPassword,
    TResult Function(TogglePasswordObscureEvent value)? togglePasswordObscure,
    TResult Function(ToggleConfirmationPasswordObscureEvent value)?
        toggleConfirmationPasswordObscure,
    TResult Function(SendDataEvent value)? sendData,
    TResult Function(ClearError value)? clearErrors,
    required TResult orElse(),
  }) {
    if (editEmail != null) {
      return editEmail(this);
    }
    return orElse();
  }
}

abstract class EditEmailEvent implements RegisterPageEvent {
  const factory EditEmailEvent(final String email) = _$EditEmailEventImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$EditEmailEventImplCopyWith<_$EditEmailEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditPasswordEventImplCopyWith<$Res> {
  factory _$$EditPasswordEventImplCopyWith(_$EditPasswordEventImpl value,
          $Res Function(_$EditPasswordEventImpl) then) =
      __$$EditPasswordEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$EditPasswordEventImplCopyWithImpl<$Res>
    extends _$RegisterPageEventCopyWithImpl<$Res, _$EditPasswordEventImpl>
    implements _$$EditPasswordEventImplCopyWith<$Res> {
  __$$EditPasswordEventImplCopyWithImpl(_$EditPasswordEventImpl _value,
      $Res Function(_$EditPasswordEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$EditPasswordEventImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditPasswordEventImpl implements EditPasswordEvent {
  const _$EditPasswordEventImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'RegisterPageEvent.editPassword(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditPasswordEventImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditPasswordEventImplCopyWith<_$EditPasswordEventImpl> get copyWith =>
      __$$EditPasswordEventImplCopyWithImpl<_$EditPasswordEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) editEmail,
    required TResult Function(String password) editPassword,
    required TResult Function(String confirmationPassword)
        editConfirmationPassword,
    required TResult Function() togglePasswordObscure,
    required TResult Function() toggleConfirmationPasswordObscure,
    required TResult Function() sendData,
    required TResult Function() clearErrors,
  }) {
    return editPassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? editEmail,
    TResult? Function(String password)? editPassword,
    TResult? Function(String confirmationPassword)? editConfirmationPassword,
    TResult? Function()? togglePasswordObscure,
    TResult? Function()? toggleConfirmationPasswordObscure,
    TResult? Function()? sendData,
    TResult? Function()? clearErrors,
  }) {
    return editPassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? editEmail,
    TResult Function(String password)? editPassword,
    TResult Function(String confirmationPassword)? editConfirmationPassword,
    TResult Function()? togglePasswordObscure,
    TResult Function()? toggleConfirmationPasswordObscure,
    TResult Function()? sendData,
    TResult Function()? clearErrors,
    required TResult orElse(),
  }) {
    if (editPassword != null) {
      return editPassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditEmailEvent value) editEmail,
    required TResult Function(EditPasswordEvent value) editPassword,
    required TResult Function(EditConfirmationPasswordEvent value)
        editConfirmationPassword,
    required TResult Function(TogglePasswordObscureEvent value)
        togglePasswordObscure,
    required TResult Function(ToggleConfirmationPasswordObscureEvent value)
        toggleConfirmationPasswordObscure,
    required TResult Function(SendDataEvent value) sendData,
    required TResult Function(ClearError value) clearErrors,
  }) {
    return editPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditEmailEvent value)? editEmail,
    TResult? Function(EditPasswordEvent value)? editPassword,
    TResult? Function(EditConfirmationPasswordEvent value)?
        editConfirmationPassword,
    TResult? Function(TogglePasswordObscureEvent value)? togglePasswordObscure,
    TResult? Function(ToggleConfirmationPasswordObscureEvent value)?
        toggleConfirmationPasswordObscure,
    TResult? Function(SendDataEvent value)? sendData,
    TResult? Function(ClearError value)? clearErrors,
  }) {
    return editPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditEmailEvent value)? editEmail,
    TResult Function(EditPasswordEvent value)? editPassword,
    TResult Function(EditConfirmationPasswordEvent value)?
        editConfirmationPassword,
    TResult Function(TogglePasswordObscureEvent value)? togglePasswordObscure,
    TResult Function(ToggleConfirmationPasswordObscureEvent value)?
        toggleConfirmationPasswordObscure,
    TResult Function(SendDataEvent value)? sendData,
    TResult Function(ClearError value)? clearErrors,
    required TResult orElse(),
  }) {
    if (editPassword != null) {
      return editPassword(this);
    }
    return orElse();
  }
}

abstract class EditPasswordEvent implements RegisterPageEvent {
  const factory EditPasswordEvent(final String password) =
      _$EditPasswordEventImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$EditPasswordEventImplCopyWith<_$EditPasswordEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditConfirmationPasswordEventImplCopyWith<$Res> {
  factory _$$EditConfirmationPasswordEventImplCopyWith(
          _$EditConfirmationPasswordEventImpl value,
          $Res Function(_$EditConfirmationPasswordEventImpl) then) =
      __$$EditConfirmationPasswordEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String confirmationPassword});
}

/// @nodoc
class __$$EditConfirmationPasswordEventImplCopyWithImpl<$Res>
    extends _$RegisterPageEventCopyWithImpl<$Res,
        _$EditConfirmationPasswordEventImpl>
    implements _$$EditConfirmationPasswordEventImplCopyWith<$Res> {
  __$$EditConfirmationPasswordEventImplCopyWithImpl(
      _$EditConfirmationPasswordEventImpl _value,
      $Res Function(_$EditConfirmationPasswordEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmationPassword = null,
  }) {
    return _then(_$EditConfirmationPasswordEventImpl(
      null == confirmationPassword
          ? _value.confirmationPassword
          : confirmationPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditConfirmationPasswordEventImpl
    implements EditConfirmationPasswordEvent {
  const _$EditConfirmationPasswordEventImpl(this.confirmationPassword);

  @override
  final String confirmationPassword;

  @override
  String toString() {
    return 'RegisterPageEvent.editConfirmationPassword(confirmationPassword: $confirmationPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditConfirmationPasswordEventImpl &&
            (identical(other.confirmationPassword, confirmationPassword) ||
                other.confirmationPassword == confirmationPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmationPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditConfirmationPasswordEventImplCopyWith<
          _$EditConfirmationPasswordEventImpl>
      get copyWith => __$$EditConfirmationPasswordEventImplCopyWithImpl<
          _$EditConfirmationPasswordEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) editEmail,
    required TResult Function(String password) editPassword,
    required TResult Function(String confirmationPassword)
        editConfirmationPassword,
    required TResult Function() togglePasswordObscure,
    required TResult Function() toggleConfirmationPasswordObscure,
    required TResult Function() sendData,
    required TResult Function() clearErrors,
  }) {
    return editConfirmationPassword(confirmationPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? editEmail,
    TResult? Function(String password)? editPassword,
    TResult? Function(String confirmationPassword)? editConfirmationPassword,
    TResult? Function()? togglePasswordObscure,
    TResult? Function()? toggleConfirmationPasswordObscure,
    TResult? Function()? sendData,
    TResult? Function()? clearErrors,
  }) {
    return editConfirmationPassword?.call(confirmationPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? editEmail,
    TResult Function(String password)? editPassword,
    TResult Function(String confirmationPassword)? editConfirmationPassword,
    TResult Function()? togglePasswordObscure,
    TResult Function()? toggleConfirmationPasswordObscure,
    TResult Function()? sendData,
    TResult Function()? clearErrors,
    required TResult orElse(),
  }) {
    if (editConfirmationPassword != null) {
      return editConfirmationPassword(confirmationPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditEmailEvent value) editEmail,
    required TResult Function(EditPasswordEvent value) editPassword,
    required TResult Function(EditConfirmationPasswordEvent value)
        editConfirmationPassword,
    required TResult Function(TogglePasswordObscureEvent value)
        togglePasswordObscure,
    required TResult Function(ToggleConfirmationPasswordObscureEvent value)
        toggleConfirmationPasswordObscure,
    required TResult Function(SendDataEvent value) sendData,
    required TResult Function(ClearError value) clearErrors,
  }) {
    return editConfirmationPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditEmailEvent value)? editEmail,
    TResult? Function(EditPasswordEvent value)? editPassword,
    TResult? Function(EditConfirmationPasswordEvent value)?
        editConfirmationPassword,
    TResult? Function(TogglePasswordObscureEvent value)? togglePasswordObscure,
    TResult? Function(ToggleConfirmationPasswordObscureEvent value)?
        toggleConfirmationPasswordObscure,
    TResult? Function(SendDataEvent value)? sendData,
    TResult? Function(ClearError value)? clearErrors,
  }) {
    return editConfirmationPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditEmailEvent value)? editEmail,
    TResult Function(EditPasswordEvent value)? editPassword,
    TResult Function(EditConfirmationPasswordEvent value)?
        editConfirmationPassword,
    TResult Function(TogglePasswordObscureEvent value)? togglePasswordObscure,
    TResult Function(ToggleConfirmationPasswordObscureEvent value)?
        toggleConfirmationPasswordObscure,
    TResult Function(SendDataEvent value)? sendData,
    TResult Function(ClearError value)? clearErrors,
    required TResult orElse(),
  }) {
    if (editConfirmationPassword != null) {
      return editConfirmationPassword(this);
    }
    return orElse();
  }
}

abstract class EditConfirmationPasswordEvent implements RegisterPageEvent {
  const factory EditConfirmationPasswordEvent(
      final String confirmationPassword) = _$EditConfirmationPasswordEventImpl;

  String get confirmationPassword;
  @JsonKey(ignore: true)
  _$$EditConfirmationPasswordEventImplCopyWith<
          _$EditConfirmationPasswordEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TogglePasswordObscureEventImplCopyWith<$Res> {
  factory _$$TogglePasswordObscureEventImplCopyWith(
          _$TogglePasswordObscureEventImpl value,
          $Res Function(_$TogglePasswordObscureEventImpl) then) =
      __$$TogglePasswordObscureEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TogglePasswordObscureEventImplCopyWithImpl<$Res>
    extends _$RegisterPageEventCopyWithImpl<$Res,
        _$TogglePasswordObscureEventImpl>
    implements _$$TogglePasswordObscureEventImplCopyWith<$Res> {
  __$$TogglePasswordObscureEventImplCopyWithImpl(
      _$TogglePasswordObscureEventImpl _value,
      $Res Function(_$TogglePasswordObscureEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TogglePasswordObscureEventImpl implements TogglePasswordObscureEvent {
  const _$TogglePasswordObscureEventImpl();

  @override
  String toString() {
    return 'RegisterPageEvent.togglePasswordObscure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TogglePasswordObscureEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) editEmail,
    required TResult Function(String password) editPassword,
    required TResult Function(String confirmationPassword)
        editConfirmationPassword,
    required TResult Function() togglePasswordObscure,
    required TResult Function() toggleConfirmationPasswordObscure,
    required TResult Function() sendData,
    required TResult Function() clearErrors,
  }) {
    return togglePasswordObscure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? editEmail,
    TResult? Function(String password)? editPassword,
    TResult? Function(String confirmationPassword)? editConfirmationPassword,
    TResult? Function()? togglePasswordObscure,
    TResult? Function()? toggleConfirmationPasswordObscure,
    TResult? Function()? sendData,
    TResult? Function()? clearErrors,
  }) {
    return togglePasswordObscure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? editEmail,
    TResult Function(String password)? editPassword,
    TResult Function(String confirmationPassword)? editConfirmationPassword,
    TResult Function()? togglePasswordObscure,
    TResult Function()? toggleConfirmationPasswordObscure,
    TResult Function()? sendData,
    TResult Function()? clearErrors,
    required TResult orElse(),
  }) {
    if (togglePasswordObscure != null) {
      return togglePasswordObscure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditEmailEvent value) editEmail,
    required TResult Function(EditPasswordEvent value) editPassword,
    required TResult Function(EditConfirmationPasswordEvent value)
        editConfirmationPassword,
    required TResult Function(TogglePasswordObscureEvent value)
        togglePasswordObscure,
    required TResult Function(ToggleConfirmationPasswordObscureEvent value)
        toggleConfirmationPasswordObscure,
    required TResult Function(SendDataEvent value) sendData,
    required TResult Function(ClearError value) clearErrors,
  }) {
    return togglePasswordObscure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditEmailEvent value)? editEmail,
    TResult? Function(EditPasswordEvent value)? editPassword,
    TResult? Function(EditConfirmationPasswordEvent value)?
        editConfirmationPassword,
    TResult? Function(TogglePasswordObscureEvent value)? togglePasswordObscure,
    TResult? Function(ToggleConfirmationPasswordObscureEvent value)?
        toggleConfirmationPasswordObscure,
    TResult? Function(SendDataEvent value)? sendData,
    TResult? Function(ClearError value)? clearErrors,
  }) {
    return togglePasswordObscure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditEmailEvent value)? editEmail,
    TResult Function(EditPasswordEvent value)? editPassword,
    TResult Function(EditConfirmationPasswordEvent value)?
        editConfirmationPassword,
    TResult Function(TogglePasswordObscureEvent value)? togglePasswordObscure,
    TResult Function(ToggleConfirmationPasswordObscureEvent value)?
        toggleConfirmationPasswordObscure,
    TResult Function(SendDataEvent value)? sendData,
    TResult Function(ClearError value)? clearErrors,
    required TResult orElse(),
  }) {
    if (togglePasswordObscure != null) {
      return togglePasswordObscure(this);
    }
    return orElse();
  }
}

abstract class TogglePasswordObscureEvent implements RegisterPageEvent {
  const factory TogglePasswordObscureEvent() = _$TogglePasswordObscureEventImpl;
}

/// @nodoc
abstract class _$$ToggleConfirmationPasswordObscureEventImplCopyWith<$Res> {
  factory _$$ToggleConfirmationPasswordObscureEventImplCopyWith(
          _$ToggleConfirmationPasswordObscureEventImpl value,
          $Res Function(_$ToggleConfirmationPasswordObscureEventImpl) then) =
      __$$ToggleConfirmationPasswordObscureEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleConfirmationPasswordObscureEventImplCopyWithImpl<$Res>
    extends _$RegisterPageEventCopyWithImpl<$Res,
        _$ToggleConfirmationPasswordObscureEventImpl>
    implements _$$ToggleConfirmationPasswordObscureEventImplCopyWith<$Res> {
  __$$ToggleConfirmationPasswordObscureEventImplCopyWithImpl(
      _$ToggleConfirmationPasswordObscureEventImpl _value,
      $Res Function(_$ToggleConfirmationPasswordObscureEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleConfirmationPasswordObscureEventImpl
    implements ToggleConfirmationPasswordObscureEvent {
  const _$ToggleConfirmationPasswordObscureEventImpl();

  @override
  String toString() {
    return 'RegisterPageEvent.toggleConfirmationPasswordObscure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleConfirmationPasswordObscureEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) editEmail,
    required TResult Function(String password) editPassword,
    required TResult Function(String confirmationPassword)
        editConfirmationPassword,
    required TResult Function() togglePasswordObscure,
    required TResult Function() toggleConfirmationPasswordObscure,
    required TResult Function() sendData,
    required TResult Function() clearErrors,
  }) {
    return toggleConfirmationPasswordObscure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? editEmail,
    TResult? Function(String password)? editPassword,
    TResult? Function(String confirmationPassword)? editConfirmationPassword,
    TResult? Function()? togglePasswordObscure,
    TResult? Function()? toggleConfirmationPasswordObscure,
    TResult? Function()? sendData,
    TResult? Function()? clearErrors,
  }) {
    return toggleConfirmationPasswordObscure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? editEmail,
    TResult Function(String password)? editPassword,
    TResult Function(String confirmationPassword)? editConfirmationPassword,
    TResult Function()? togglePasswordObscure,
    TResult Function()? toggleConfirmationPasswordObscure,
    TResult Function()? sendData,
    TResult Function()? clearErrors,
    required TResult orElse(),
  }) {
    if (toggleConfirmationPasswordObscure != null) {
      return toggleConfirmationPasswordObscure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditEmailEvent value) editEmail,
    required TResult Function(EditPasswordEvent value) editPassword,
    required TResult Function(EditConfirmationPasswordEvent value)
        editConfirmationPassword,
    required TResult Function(TogglePasswordObscureEvent value)
        togglePasswordObscure,
    required TResult Function(ToggleConfirmationPasswordObscureEvent value)
        toggleConfirmationPasswordObscure,
    required TResult Function(SendDataEvent value) sendData,
    required TResult Function(ClearError value) clearErrors,
  }) {
    return toggleConfirmationPasswordObscure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditEmailEvent value)? editEmail,
    TResult? Function(EditPasswordEvent value)? editPassword,
    TResult? Function(EditConfirmationPasswordEvent value)?
        editConfirmationPassword,
    TResult? Function(TogglePasswordObscureEvent value)? togglePasswordObscure,
    TResult? Function(ToggleConfirmationPasswordObscureEvent value)?
        toggleConfirmationPasswordObscure,
    TResult? Function(SendDataEvent value)? sendData,
    TResult? Function(ClearError value)? clearErrors,
  }) {
    return toggleConfirmationPasswordObscure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditEmailEvent value)? editEmail,
    TResult Function(EditPasswordEvent value)? editPassword,
    TResult Function(EditConfirmationPasswordEvent value)?
        editConfirmationPassword,
    TResult Function(TogglePasswordObscureEvent value)? togglePasswordObscure,
    TResult Function(ToggleConfirmationPasswordObscureEvent value)?
        toggleConfirmationPasswordObscure,
    TResult Function(SendDataEvent value)? sendData,
    TResult Function(ClearError value)? clearErrors,
    required TResult orElse(),
  }) {
    if (toggleConfirmationPasswordObscure != null) {
      return toggleConfirmationPasswordObscure(this);
    }
    return orElse();
  }
}

abstract class ToggleConfirmationPasswordObscureEvent
    implements RegisterPageEvent {
  const factory ToggleConfirmationPasswordObscureEvent() =
      _$ToggleConfirmationPasswordObscureEventImpl;
}

/// @nodoc
abstract class _$$SendDataEventImplCopyWith<$Res> {
  factory _$$SendDataEventImplCopyWith(
          _$SendDataEventImpl value, $Res Function(_$SendDataEventImpl) then) =
      __$$SendDataEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendDataEventImplCopyWithImpl<$Res>
    extends _$RegisterPageEventCopyWithImpl<$Res, _$SendDataEventImpl>
    implements _$$SendDataEventImplCopyWith<$Res> {
  __$$SendDataEventImplCopyWithImpl(
      _$SendDataEventImpl _value, $Res Function(_$SendDataEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendDataEventImpl implements SendDataEvent {
  const _$SendDataEventImpl();

  @override
  String toString() {
    return 'RegisterPageEvent.sendData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendDataEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) editEmail,
    required TResult Function(String password) editPassword,
    required TResult Function(String confirmationPassword)
        editConfirmationPassword,
    required TResult Function() togglePasswordObscure,
    required TResult Function() toggleConfirmationPasswordObscure,
    required TResult Function() sendData,
    required TResult Function() clearErrors,
  }) {
    return sendData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? editEmail,
    TResult? Function(String password)? editPassword,
    TResult? Function(String confirmationPassword)? editConfirmationPassword,
    TResult? Function()? togglePasswordObscure,
    TResult? Function()? toggleConfirmationPasswordObscure,
    TResult? Function()? sendData,
    TResult? Function()? clearErrors,
  }) {
    return sendData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? editEmail,
    TResult Function(String password)? editPassword,
    TResult Function(String confirmationPassword)? editConfirmationPassword,
    TResult Function()? togglePasswordObscure,
    TResult Function()? toggleConfirmationPasswordObscure,
    TResult Function()? sendData,
    TResult Function()? clearErrors,
    required TResult orElse(),
  }) {
    if (sendData != null) {
      return sendData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditEmailEvent value) editEmail,
    required TResult Function(EditPasswordEvent value) editPassword,
    required TResult Function(EditConfirmationPasswordEvent value)
        editConfirmationPassword,
    required TResult Function(TogglePasswordObscureEvent value)
        togglePasswordObscure,
    required TResult Function(ToggleConfirmationPasswordObscureEvent value)
        toggleConfirmationPasswordObscure,
    required TResult Function(SendDataEvent value) sendData,
    required TResult Function(ClearError value) clearErrors,
  }) {
    return sendData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditEmailEvent value)? editEmail,
    TResult? Function(EditPasswordEvent value)? editPassword,
    TResult? Function(EditConfirmationPasswordEvent value)?
        editConfirmationPassword,
    TResult? Function(TogglePasswordObscureEvent value)? togglePasswordObscure,
    TResult? Function(ToggleConfirmationPasswordObscureEvent value)?
        toggleConfirmationPasswordObscure,
    TResult? Function(SendDataEvent value)? sendData,
    TResult? Function(ClearError value)? clearErrors,
  }) {
    return sendData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditEmailEvent value)? editEmail,
    TResult Function(EditPasswordEvent value)? editPassword,
    TResult Function(EditConfirmationPasswordEvent value)?
        editConfirmationPassword,
    TResult Function(TogglePasswordObscureEvent value)? togglePasswordObscure,
    TResult Function(ToggleConfirmationPasswordObscureEvent value)?
        toggleConfirmationPasswordObscure,
    TResult Function(SendDataEvent value)? sendData,
    TResult Function(ClearError value)? clearErrors,
    required TResult orElse(),
  }) {
    if (sendData != null) {
      return sendData(this);
    }
    return orElse();
  }
}

abstract class SendDataEvent implements RegisterPageEvent {
  const factory SendDataEvent() = _$SendDataEventImpl;
}

/// @nodoc
abstract class _$$ClearErrorImplCopyWith<$Res> {
  factory _$$ClearErrorImplCopyWith(
          _$ClearErrorImpl value, $Res Function(_$ClearErrorImpl) then) =
      __$$ClearErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearErrorImplCopyWithImpl<$Res>
    extends _$RegisterPageEventCopyWithImpl<$Res, _$ClearErrorImpl>
    implements _$$ClearErrorImplCopyWith<$Res> {
  __$$ClearErrorImplCopyWithImpl(
      _$ClearErrorImpl _value, $Res Function(_$ClearErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearErrorImpl implements ClearError {
  const _$ClearErrorImpl();

  @override
  String toString() {
    return 'RegisterPageEvent.clearErrors()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) editEmail,
    required TResult Function(String password) editPassword,
    required TResult Function(String confirmationPassword)
        editConfirmationPassword,
    required TResult Function() togglePasswordObscure,
    required TResult Function() toggleConfirmationPasswordObscure,
    required TResult Function() sendData,
    required TResult Function() clearErrors,
  }) {
    return clearErrors();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? editEmail,
    TResult? Function(String password)? editPassword,
    TResult? Function(String confirmationPassword)? editConfirmationPassword,
    TResult? Function()? togglePasswordObscure,
    TResult? Function()? toggleConfirmationPasswordObscure,
    TResult? Function()? sendData,
    TResult? Function()? clearErrors,
  }) {
    return clearErrors?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? editEmail,
    TResult Function(String password)? editPassword,
    TResult Function(String confirmationPassword)? editConfirmationPassword,
    TResult Function()? togglePasswordObscure,
    TResult Function()? toggleConfirmationPasswordObscure,
    TResult Function()? sendData,
    TResult Function()? clearErrors,
    required TResult orElse(),
  }) {
    if (clearErrors != null) {
      return clearErrors();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditEmailEvent value) editEmail,
    required TResult Function(EditPasswordEvent value) editPassword,
    required TResult Function(EditConfirmationPasswordEvent value)
        editConfirmationPassword,
    required TResult Function(TogglePasswordObscureEvent value)
        togglePasswordObscure,
    required TResult Function(ToggleConfirmationPasswordObscureEvent value)
        toggleConfirmationPasswordObscure,
    required TResult Function(SendDataEvent value) sendData,
    required TResult Function(ClearError value) clearErrors,
  }) {
    return clearErrors(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditEmailEvent value)? editEmail,
    TResult? Function(EditPasswordEvent value)? editPassword,
    TResult? Function(EditConfirmationPasswordEvent value)?
        editConfirmationPassword,
    TResult? Function(TogglePasswordObscureEvent value)? togglePasswordObscure,
    TResult? Function(ToggleConfirmationPasswordObscureEvent value)?
        toggleConfirmationPasswordObscure,
    TResult? Function(SendDataEvent value)? sendData,
    TResult? Function(ClearError value)? clearErrors,
  }) {
    return clearErrors?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditEmailEvent value)? editEmail,
    TResult Function(EditPasswordEvent value)? editPassword,
    TResult Function(EditConfirmationPasswordEvent value)?
        editConfirmationPassword,
    TResult Function(TogglePasswordObscureEvent value)? togglePasswordObscure,
    TResult Function(ToggleConfirmationPasswordObscureEvent value)?
        toggleConfirmationPasswordObscure,
    TResult Function(SendDataEvent value)? sendData,
    TResult Function(ClearError value)? clearErrors,
    required TResult orElse(),
  }) {
    if (clearErrors != null) {
      return clearErrors(this);
    }
    return orElse();
  }
}

abstract class ClearError implements RegisterPageEvent {
  const factory ClearError() = _$ClearErrorImpl;
}

/// @nodoc
mixin _$RegisterPageState {
  EmailTextFormViewModel get emailTextFormViewModel =>
      throw _privateConstructorUsedError;
  PasswordTextFormViewModel get passwordTextFormViewModel =>
      throw _privateConstructorUsedError;
  PasswordRepeatTextFormViewModel get passwordRepeatTextFormViewModel =>
      throw _privateConstructorUsedError;
  RegistrationStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterPageStateCopyWith<RegisterPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterPageStateCopyWith<$Res> {
  factory $RegisterPageStateCopyWith(
          RegisterPageState value, $Res Function(RegisterPageState) then) =
      _$RegisterPageStateCopyWithImpl<$Res, RegisterPageState>;
  @useResult
  $Res call(
      {EmailTextFormViewModel emailTextFormViewModel,
      PasswordTextFormViewModel passwordTextFormViewModel,
      PasswordRepeatTextFormViewModel passwordRepeatTextFormViewModel,
      RegistrationStatus status,
      String message});

  $EmailTextFormViewModelCopyWith<$Res> get emailTextFormViewModel;
  $PasswordTextFormViewModelCopyWith<$Res> get passwordTextFormViewModel;
  $PasswordRepeatTextFormViewModelCopyWith<$Res>
      get passwordRepeatTextFormViewModel;
}

/// @nodoc
class _$RegisterPageStateCopyWithImpl<$Res, $Val extends RegisterPageState>
    implements $RegisterPageStateCopyWith<$Res> {
  _$RegisterPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailTextFormViewModel = null,
    Object? passwordTextFormViewModel = null,
    Object? passwordRepeatTextFormViewModel = null,
    Object? status = null,
    Object? message = null,
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
      passwordRepeatTextFormViewModel: null == passwordRepeatTextFormViewModel
          ? _value.passwordRepeatTextFormViewModel
          : passwordRepeatTextFormViewModel // ignore: cast_nullable_to_non_nullable
              as PasswordRepeatTextFormViewModel,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RegistrationStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
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

  @override
  @pragma('vm:prefer-inline')
  $PasswordRepeatTextFormViewModelCopyWith<$Res>
      get passwordRepeatTextFormViewModel {
    return $PasswordRepeatTextFormViewModelCopyWith<$Res>(
        _value.passwordRepeatTextFormViewModel, (value) {
      return _then(
          _value.copyWith(passwordRepeatTextFormViewModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegisterPageStateImplCopyWith<$Res>
    implements $RegisterPageStateCopyWith<$Res> {
  factory _$$RegisterPageStateImplCopyWith(_$RegisterPageStateImpl value,
          $Res Function(_$RegisterPageStateImpl) then) =
      __$$RegisterPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailTextFormViewModel emailTextFormViewModel,
      PasswordTextFormViewModel passwordTextFormViewModel,
      PasswordRepeatTextFormViewModel passwordRepeatTextFormViewModel,
      RegistrationStatus status,
      String message});

  @override
  $EmailTextFormViewModelCopyWith<$Res> get emailTextFormViewModel;
  @override
  $PasswordTextFormViewModelCopyWith<$Res> get passwordTextFormViewModel;
  @override
  $PasswordRepeatTextFormViewModelCopyWith<$Res>
      get passwordRepeatTextFormViewModel;
}

/// @nodoc
class __$$RegisterPageStateImplCopyWithImpl<$Res>
    extends _$RegisterPageStateCopyWithImpl<$Res, _$RegisterPageStateImpl>
    implements _$$RegisterPageStateImplCopyWith<$Res> {
  __$$RegisterPageStateImplCopyWithImpl(_$RegisterPageStateImpl _value,
      $Res Function(_$RegisterPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailTextFormViewModel = null,
    Object? passwordTextFormViewModel = null,
    Object? passwordRepeatTextFormViewModel = null,
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_$RegisterPageStateImpl(
      emailTextFormViewModel: null == emailTextFormViewModel
          ? _value.emailTextFormViewModel
          : emailTextFormViewModel // ignore: cast_nullable_to_non_nullable
              as EmailTextFormViewModel,
      passwordTextFormViewModel: null == passwordTextFormViewModel
          ? _value.passwordTextFormViewModel
          : passwordTextFormViewModel // ignore: cast_nullable_to_non_nullable
              as PasswordTextFormViewModel,
      passwordRepeatTextFormViewModel: null == passwordRepeatTextFormViewModel
          ? _value.passwordRepeatTextFormViewModel
          : passwordRepeatTextFormViewModel // ignore: cast_nullable_to_non_nullable
              as PasswordRepeatTextFormViewModel,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RegistrationStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterPageStateImpl implements _RegisterPageState {
  const _$RegisterPageStateImpl(
      {this.emailTextFormViewModel = const EmailTextFormViewModel(),
      this.passwordTextFormViewModel = const PasswordTextFormViewModel(),
      this.passwordRepeatTextFormViewModel =
          const PasswordRepeatTextFormViewModel(),
      this.status = RegistrationStatus.none,
      this.message = ''});

  @override
  @JsonKey()
  final EmailTextFormViewModel emailTextFormViewModel;
  @override
  @JsonKey()
  final PasswordTextFormViewModel passwordTextFormViewModel;
  @override
  @JsonKey()
  final PasswordRepeatTextFormViewModel passwordRepeatTextFormViewModel;
  @override
  @JsonKey()
  final RegistrationStatus status;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'RegisterPageState(emailTextFormViewModel: $emailTextFormViewModel, passwordTextFormViewModel: $passwordTextFormViewModel, passwordRepeatTextFormViewModel: $passwordRepeatTextFormViewModel, status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterPageStateImpl &&
            (identical(other.emailTextFormViewModel, emailTextFormViewModel) ||
                other.emailTextFormViewModel == emailTextFormViewModel) &&
            (identical(other.passwordTextFormViewModel,
                    passwordTextFormViewModel) ||
                other.passwordTextFormViewModel == passwordTextFormViewModel) &&
            (identical(other.passwordRepeatTextFormViewModel,
                    passwordRepeatTextFormViewModel) ||
                other.passwordRepeatTextFormViewModel ==
                    passwordRepeatTextFormViewModel) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      emailTextFormViewModel,
      passwordTextFormViewModel,
      passwordRepeatTextFormViewModel,
      status,
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterPageStateImplCopyWith<_$RegisterPageStateImpl> get copyWith =>
      __$$RegisterPageStateImplCopyWithImpl<_$RegisterPageStateImpl>(
          this, _$identity);
}

abstract class _RegisterPageState implements RegisterPageState {
  const factory _RegisterPageState(
      {final EmailTextFormViewModel emailTextFormViewModel,
      final PasswordTextFormViewModel passwordTextFormViewModel,
      final PasswordRepeatTextFormViewModel passwordRepeatTextFormViewModel,
      final RegistrationStatus status,
      final String message}) = _$RegisterPageStateImpl;

  @override
  EmailTextFormViewModel get emailTextFormViewModel;
  @override
  PasswordTextFormViewModel get passwordTextFormViewModel;
  @override
  PasswordRepeatTextFormViewModel get passwordRepeatTextFormViewModel;
  @override
  RegistrationStatus get status;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$RegisterPageStateImplCopyWith<_$RegisterPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
