// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResetPasswordPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) editEmail,
    required TResult Function(String password) editPassword,
    required TResult Function(String confirmationPassword)
        editConfirmationPassword,
    required TResult Function() togglePasswordObscure,
    required TResult Function() toggleConfirmationPasswordObscure,
    required TResult Function() sendEmail,
    required TResult Function() sendCodeAndPassword,
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
    TResult? Function()? sendEmail,
    TResult? Function()? sendCodeAndPassword,
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
    TResult Function()? sendEmail,
    TResult Function()? sendCodeAndPassword,
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
    required TResult Function(SendEmailEvent value) sendEmail,
    required TResult Function(SendCodeAndPasswordEvent value)
        sendCodeAndPassword,
    required TResult Function(ClearErrorEvent value) clearErrors,
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
    TResult? Function(SendEmailEvent value)? sendEmail,
    TResult? Function(SendCodeAndPasswordEvent value)? sendCodeAndPassword,
    TResult? Function(ClearErrorEvent value)? clearErrors,
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
    TResult Function(SendEmailEvent value)? sendEmail,
    TResult Function(SendCodeAndPasswordEvent value)? sendCodeAndPassword,
    TResult Function(ClearErrorEvent value)? clearErrors,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordPageEventCopyWith<$Res> {
  factory $ResetPasswordPageEventCopyWith(ResetPasswordPageEvent value,
          $Res Function(ResetPasswordPageEvent) then) =
      _$ResetPasswordPageEventCopyWithImpl<$Res, ResetPasswordPageEvent>;
}

/// @nodoc
class _$ResetPasswordPageEventCopyWithImpl<$Res,
        $Val extends ResetPasswordPageEvent>
    implements $ResetPasswordPageEventCopyWith<$Res> {
  _$ResetPasswordPageEventCopyWithImpl(this._value, this._then);

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
    extends _$ResetPasswordPageEventCopyWithImpl<$Res, _$EditEmailEventImpl>
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
    return 'ResetPasswordPageEvent.editEmail(email: $email)';
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
    required TResult Function() sendEmail,
    required TResult Function() sendCodeAndPassword,
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
    TResult? Function()? sendEmail,
    TResult? Function()? sendCodeAndPassword,
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
    TResult Function()? sendEmail,
    TResult Function()? sendCodeAndPassword,
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
    required TResult Function(SendEmailEvent value) sendEmail,
    required TResult Function(SendCodeAndPasswordEvent value)
        sendCodeAndPassword,
    required TResult Function(ClearErrorEvent value) clearErrors,
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
    TResult? Function(SendEmailEvent value)? sendEmail,
    TResult? Function(SendCodeAndPasswordEvent value)? sendCodeAndPassword,
    TResult? Function(ClearErrorEvent value)? clearErrors,
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
    TResult Function(SendEmailEvent value)? sendEmail,
    TResult Function(SendCodeAndPasswordEvent value)? sendCodeAndPassword,
    TResult Function(ClearErrorEvent value)? clearErrors,
    required TResult orElse(),
  }) {
    if (editEmail != null) {
      return editEmail(this);
    }
    return orElse();
  }
}

abstract class EditEmailEvent implements ResetPasswordPageEvent {
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
    extends _$ResetPasswordPageEventCopyWithImpl<$Res, _$EditPasswordEventImpl>
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
    return 'ResetPasswordPageEvent.editPassword(password: $password)';
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
    required TResult Function() sendEmail,
    required TResult Function() sendCodeAndPassword,
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
    TResult? Function()? sendEmail,
    TResult? Function()? sendCodeAndPassword,
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
    TResult Function()? sendEmail,
    TResult Function()? sendCodeAndPassword,
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
    required TResult Function(SendEmailEvent value) sendEmail,
    required TResult Function(SendCodeAndPasswordEvent value)
        sendCodeAndPassword,
    required TResult Function(ClearErrorEvent value) clearErrors,
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
    TResult? Function(SendEmailEvent value)? sendEmail,
    TResult? Function(SendCodeAndPasswordEvent value)? sendCodeAndPassword,
    TResult? Function(ClearErrorEvent value)? clearErrors,
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
    TResult Function(SendEmailEvent value)? sendEmail,
    TResult Function(SendCodeAndPasswordEvent value)? sendCodeAndPassword,
    TResult Function(ClearErrorEvent value)? clearErrors,
    required TResult orElse(),
  }) {
    if (editPassword != null) {
      return editPassword(this);
    }
    return orElse();
  }
}

abstract class EditPasswordEvent implements ResetPasswordPageEvent {
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
    extends _$ResetPasswordPageEventCopyWithImpl<$Res,
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
    return 'ResetPasswordPageEvent.editConfirmationPassword(confirmationPassword: $confirmationPassword)';
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
    required TResult Function() sendEmail,
    required TResult Function() sendCodeAndPassword,
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
    TResult? Function()? sendEmail,
    TResult? Function()? sendCodeAndPassword,
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
    TResult Function()? sendEmail,
    TResult Function()? sendCodeAndPassword,
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
    required TResult Function(SendEmailEvent value) sendEmail,
    required TResult Function(SendCodeAndPasswordEvent value)
        sendCodeAndPassword,
    required TResult Function(ClearErrorEvent value) clearErrors,
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
    TResult? Function(SendEmailEvent value)? sendEmail,
    TResult? Function(SendCodeAndPasswordEvent value)? sendCodeAndPassword,
    TResult? Function(ClearErrorEvent value)? clearErrors,
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
    TResult Function(SendEmailEvent value)? sendEmail,
    TResult Function(SendCodeAndPasswordEvent value)? sendCodeAndPassword,
    TResult Function(ClearErrorEvent value)? clearErrors,
    required TResult orElse(),
  }) {
    if (editConfirmationPassword != null) {
      return editConfirmationPassword(this);
    }
    return orElse();
  }
}

abstract class EditConfirmationPasswordEvent implements ResetPasswordPageEvent {
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
    extends _$ResetPasswordPageEventCopyWithImpl<$Res,
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
    return 'ResetPasswordPageEvent.togglePasswordObscure()';
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
    required TResult Function() sendEmail,
    required TResult Function() sendCodeAndPassword,
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
    TResult? Function()? sendEmail,
    TResult? Function()? sendCodeAndPassword,
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
    TResult Function()? sendEmail,
    TResult Function()? sendCodeAndPassword,
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
    required TResult Function(SendEmailEvent value) sendEmail,
    required TResult Function(SendCodeAndPasswordEvent value)
        sendCodeAndPassword,
    required TResult Function(ClearErrorEvent value) clearErrors,
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
    TResult? Function(SendEmailEvent value)? sendEmail,
    TResult? Function(SendCodeAndPasswordEvent value)? sendCodeAndPassword,
    TResult? Function(ClearErrorEvent value)? clearErrors,
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
    TResult Function(SendEmailEvent value)? sendEmail,
    TResult Function(SendCodeAndPasswordEvent value)? sendCodeAndPassword,
    TResult Function(ClearErrorEvent value)? clearErrors,
    required TResult orElse(),
  }) {
    if (togglePasswordObscure != null) {
      return togglePasswordObscure(this);
    }
    return orElse();
  }
}

abstract class TogglePasswordObscureEvent implements ResetPasswordPageEvent {
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
    extends _$ResetPasswordPageEventCopyWithImpl<$Res,
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
    return 'ResetPasswordPageEvent.toggleConfirmationPasswordObscure()';
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
    required TResult Function() sendEmail,
    required TResult Function() sendCodeAndPassword,
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
    TResult? Function()? sendEmail,
    TResult? Function()? sendCodeAndPassword,
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
    TResult Function()? sendEmail,
    TResult Function()? sendCodeAndPassword,
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
    required TResult Function(SendEmailEvent value) sendEmail,
    required TResult Function(SendCodeAndPasswordEvent value)
        sendCodeAndPassword,
    required TResult Function(ClearErrorEvent value) clearErrors,
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
    TResult? Function(SendEmailEvent value)? sendEmail,
    TResult? Function(SendCodeAndPasswordEvent value)? sendCodeAndPassword,
    TResult? Function(ClearErrorEvent value)? clearErrors,
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
    TResult Function(SendEmailEvent value)? sendEmail,
    TResult Function(SendCodeAndPasswordEvent value)? sendCodeAndPassword,
    TResult Function(ClearErrorEvent value)? clearErrors,
    required TResult orElse(),
  }) {
    if (toggleConfirmationPasswordObscure != null) {
      return toggleConfirmationPasswordObscure(this);
    }
    return orElse();
  }
}

abstract class ToggleConfirmationPasswordObscureEvent
    implements ResetPasswordPageEvent {
  const factory ToggleConfirmationPasswordObscureEvent() =
      _$ToggleConfirmationPasswordObscureEventImpl;
}

/// @nodoc
abstract class _$$SendEmailEventImplCopyWith<$Res> {
  factory _$$SendEmailEventImplCopyWith(_$SendEmailEventImpl value,
          $Res Function(_$SendEmailEventImpl) then) =
      __$$SendEmailEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendEmailEventImplCopyWithImpl<$Res>
    extends _$ResetPasswordPageEventCopyWithImpl<$Res, _$SendEmailEventImpl>
    implements _$$SendEmailEventImplCopyWith<$Res> {
  __$$SendEmailEventImplCopyWithImpl(
      _$SendEmailEventImpl _value, $Res Function(_$SendEmailEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendEmailEventImpl implements SendEmailEvent {
  const _$SendEmailEventImpl();

  @override
  String toString() {
    return 'ResetPasswordPageEvent.sendEmail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendEmailEventImpl);
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
    required TResult Function() sendEmail,
    required TResult Function() sendCodeAndPassword,
    required TResult Function() clearErrors,
  }) {
    return sendEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? editEmail,
    TResult? Function(String password)? editPassword,
    TResult? Function(String confirmationPassword)? editConfirmationPassword,
    TResult? Function()? togglePasswordObscure,
    TResult? Function()? toggleConfirmationPasswordObscure,
    TResult? Function()? sendEmail,
    TResult? Function()? sendCodeAndPassword,
    TResult? Function()? clearErrors,
  }) {
    return sendEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? editEmail,
    TResult Function(String password)? editPassword,
    TResult Function(String confirmationPassword)? editConfirmationPassword,
    TResult Function()? togglePasswordObscure,
    TResult Function()? toggleConfirmationPasswordObscure,
    TResult Function()? sendEmail,
    TResult Function()? sendCodeAndPassword,
    TResult Function()? clearErrors,
    required TResult orElse(),
  }) {
    if (sendEmail != null) {
      return sendEmail();
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
    required TResult Function(SendEmailEvent value) sendEmail,
    required TResult Function(SendCodeAndPasswordEvent value)
        sendCodeAndPassword,
    required TResult Function(ClearErrorEvent value) clearErrors,
  }) {
    return sendEmail(this);
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
    TResult? Function(SendEmailEvent value)? sendEmail,
    TResult? Function(SendCodeAndPasswordEvent value)? sendCodeAndPassword,
    TResult? Function(ClearErrorEvent value)? clearErrors,
  }) {
    return sendEmail?.call(this);
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
    TResult Function(SendEmailEvent value)? sendEmail,
    TResult Function(SendCodeAndPasswordEvent value)? sendCodeAndPassword,
    TResult Function(ClearErrorEvent value)? clearErrors,
    required TResult orElse(),
  }) {
    if (sendEmail != null) {
      return sendEmail(this);
    }
    return orElse();
  }
}

abstract class SendEmailEvent implements ResetPasswordPageEvent {
  const factory SendEmailEvent() = _$SendEmailEventImpl;
}

/// @nodoc
abstract class _$$SendCodeAndPasswordEventImplCopyWith<$Res> {
  factory _$$SendCodeAndPasswordEventImplCopyWith(
          _$SendCodeAndPasswordEventImpl value,
          $Res Function(_$SendCodeAndPasswordEventImpl) then) =
      __$$SendCodeAndPasswordEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendCodeAndPasswordEventImplCopyWithImpl<$Res>
    extends _$ResetPasswordPageEventCopyWithImpl<$Res,
        _$SendCodeAndPasswordEventImpl>
    implements _$$SendCodeAndPasswordEventImplCopyWith<$Res> {
  __$$SendCodeAndPasswordEventImplCopyWithImpl(
      _$SendCodeAndPasswordEventImpl _value,
      $Res Function(_$SendCodeAndPasswordEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendCodeAndPasswordEventImpl implements SendCodeAndPasswordEvent {
  const _$SendCodeAndPasswordEventImpl();

  @override
  String toString() {
    return 'ResetPasswordPageEvent.sendCodeAndPassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendCodeAndPasswordEventImpl);
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
    required TResult Function() sendEmail,
    required TResult Function() sendCodeAndPassword,
    required TResult Function() clearErrors,
  }) {
    return sendCodeAndPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? editEmail,
    TResult? Function(String password)? editPassword,
    TResult? Function(String confirmationPassword)? editConfirmationPassword,
    TResult? Function()? togglePasswordObscure,
    TResult? Function()? toggleConfirmationPasswordObscure,
    TResult? Function()? sendEmail,
    TResult? Function()? sendCodeAndPassword,
    TResult? Function()? clearErrors,
  }) {
    return sendCodeAndPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? editEmail,
    TResult Function(String password)? editPassword,
    TResult Function(String confirmationPassword)? editConfirmationPassword,
    TResult Function()? togglePasswordObscure,
    TResult Function()? toggleConfirmationPasswordObscure,
    TResult Function()? sendEmail,
    TResult Function()? sendCodeAndPassword,
    TResult Function()? clearErrors,
    required TResult orElse(),
  }) {
    if (sendCodeAndPassword != null) {
      return sendCodeAndPassword();
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
    required TResult Function(SendEmailEvent value) sendEmail,
    required TResult Function(SendCodeAndPasswordEvent value)
        sendCodeAndPassword,
    required TResult Function(ClearErrorEvent value) clearErrors,
  }) {
    return sendCodeAndPassword(this);
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
    TResult? Function(SendEmailEvent value)? sendEmail,
    TResult? Function(SendCodeAndPasswordEvent value)? sendCodeAndPassword,
    TResult? Function(ClearErrorEvent value)? clearErrors,
  }) {
    return sendCodeAndPassword?.call(this);
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
    TResult Function(SendEmailEvent value)? sendEmail,
    TResult Function(SendCodeAndPasswordEvent value)? sendCodeAndPassword,
    TResult Function(ClearErrorEvent value)? clearErrors,
    required TResult orElse(),
  }) {
    if (sendCodeAndPassword != null) {
      return sendCodeAndPassword(this);
    }
    return orElse();
  }
}

abstract class SendCodeAndPasswordEvent implements ResetPasswordPageEvent {
  const factory SendCodeAndPasswordEvent() = _$SendCodeAndPasswordEventImpl;
}

/// @nodoc
abstract class _$$ClearErrorImplCopyWith<$Res> {
  factory _$$ClearErrorImplCopyWith(
          _$ClearErrorImpl value, $Res Function(_$ClearErrorImpl) then) =
      __$$ClearErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearErrorImplCopyWithImpl<$Res>
    extends _$ResetPasswordPageEventCopyWithImpl<$Res, _$ClearErrorImpl>
    implements _$$ClearErrorImplCopyWith<$Res> {
  __$$ClearErrorImplCopyWithImpl(
      _$ClearErrorImpl _value, $Res Function(_$ClearErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearErrorImpl implements ClearErrorEvent {
  const _$ClearErrorImpl();

  @override
  String toString() {
    return 'ResetPasswordPageEvent.clearErrors()';
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
    required TResult Function() sendEmail,
    required TResult Function() sendCodeAndPassword,
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
    TResult? Function()? sendEmail,
    TResult? Function()? sendCodeAndPassword,
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
    TResult Function()? sendEmail,
    TResult Function()? sendCodeAndPassword,
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
    required TResult Function(SendEmailEvent value) sendEmail,
    required TResult Function(SendCodeAndPasswordEvent value)
        sendCodeAndPassword,
    required TResult Function(ClearErrorEvent value) clearErrors,
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
    TResult? Function(SendEmailEvent value)? sendEmail,
    TResult? Function(SendCodeAndPasswordEvent value)? sendCodeAndPassword,
    TResult? Function(ClearErrorEvent value)? clearErrors,
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
    TResult Function(SendEmailEvent value)? sendEmail,
    TResult Function(SendCodeAndPasswordEvent value)? sendCodeAndPassword,
    TResult Function(ClearErrorEvent value)? clearErrors,
    required TResult orElse(),
  }) {
    if (clearErrors != null) {
      return clearErrors(this);
    }
    return orElse();
  }
}

abstract class ClearErrorEvent implements ResetPasswordPageEvent {
  const factory ClearErrorEvent() = _$ClearErrorImpl;
}

/// @nodoc
mixin _$ResetPasswordPageState {
  EmailTextFormViewModel get emailTextFormViewModel =>
      throw _privateConstructorUsedError;
  PasswordTextFormViewModel get passwordTextFormViewModel =>
      throw _privateConstructorUsedError;
  PasswordRepeatTextFormViewModel get passwordRepeatTextFormViewModel =>
      throw _privateConstructorUsedError;
  ResetStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResetPasswordPageStateCopyWith<ResetPasswordPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordPageStateCopyWith<$Res> {
  factory $ResetPasswordPageStateCopyWith(ResetPasswordPageState value,
          $Res Function(ResetPasswordPageState) then) =
      _$ResetPasswordPageStateCopyWithImpl<$Res, ResetPasswordPageState>;
  @useResult
  $Res call(
      {EmailTextFormViewModel emailTextFormViewModel,
      PasswordTextFormViewModel passwordTextFormViewModel,
      PasswordRepeatTextFormViewModel passwordRepeatTextFormViewModel,
      ResetStatus status,
      String message});

  $EmailTextFormViewModelCopyWith<$Res> get emailTextFormViewModel;
  $PasswordTextFormViewModelCopyWith<$Res> get passwordTextFormViewModel;
  $PasswordRepeatTextFormViewModelCopyWith<$Res>
      get passwordRepeatTextFormViewModel;
}

/// @nodoc
class _$ResetPasswordPageStateCopyWithImpl<$Res,
        $Val extends ResetPasswordPageState>
    implements $ResetPasswordPageStateCopyWith<$Res> {
  _$ResetPasswordPageStateCopyWithImpl(this._value, this._then);

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
              as ResetStatus,
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
abstract class _$$ResetPasswordPageStateImplCopyWith<$Res>
    implements $ResetPasswordPageStateCopyWith<$Res> {
  factory _$$ResetPasswordPageStateImplCopyWith(
          _$ResetPasswordPageStateImpl value,
          $Res Function(_$ResetPasswordPageStateImpl) then) =
      __$$ResetPasswordPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailTextFormViewModel emailTextFormViewModel,
      PasswordTextFormViewModel passwordTextFormViewModel,
      PasswordRepeatTextFormViewModel passwordRepeatTextFormViewModel,
      ResetStatus status,
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
class __$$ResetPasswordPageStateImplCopyWithImpl<$Res>
    extends _$ResetPasswordPageStateCopyWithImpl<$Res,
        _$ResetPasswordPageStateImpl>
    implements _$$ResetPasswordPageStateImplCopyWith<$Res> {
  __$$ResetPasswordPageStateImplCopyWithImpl(
      _$ResetPasswordPageStateImpl _value,
      $Res Function(_$ResetPasswordPageStateImpl) _then)
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
    return _then(_$ResetPasswordPageStateImpl(
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
              as ResetStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResetPasswordPageStateImpl implements _ResetPasswordPageState {
  const _$ResetPasswordPageStateImpl(
      {this.emailTextFormViewModel = const EmailTextFormViewModel(),
      this.passwordTextFormViewModel = const PasswordTextFormViewModel(),
      this.passwordRepeatTextFormViewModel =
          const PasswordRepeatTextFormViewModel(),
      this.status = ResetStatus.none,
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
  final ResetStatus status;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'ResetPasswordPageState(emailTextFormViewModel: $emailTextFormViewModel, passwordTextFormViewModel: $passwordTextFormViewModel, passwordRepeatTextFormViewModel: $passwordRepeatTextFormViewModel, status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordPageStateImpl &&
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
  _$$ResetPasswordPageStateImplCopyWith<_$ResetPasswordPageStateImpl>
      get copyWith => __$$ResetPasswordPageStateImplCopyWithImpl<
          _$ResetPasswordPageStateImpl>(this, _$identity);
}

abstract class _ResetPasswordPageState implements ResetPasswordPageState {
  const factory _ResetPasswordPageState(
      {final EmailTextFormViewModel emailTextFormViewModel,
      final PasswordTextFormViewModel passwordTextFormViewModel,
      final PasswordRepeatTextFormViewModel passwordRepeatTextFormViewModel,
      final ResetStatus status,
      final String message}) = _$ResetPasswordPageStateImpl;

  @override
  EmailTextFormViewModel get emailTextFormViewModel;
  @override
  PasswordTextFormViewModel get passwordTextFormViewModel;
  @override
  PasswordRepeatTextFormViewModel get passwordRepeatTextFormViewModel;
  @override
  ResetStatus get status;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ResetPasswordPageStateImplCopyWith<_$ResetPasswordPageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
