// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_entity_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommentEntityViewModel {
  int get postId => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentEntityViewModelCopyWith<CommentEntityViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentEntityViewModelCopyWith<$Res> {
  factory $CommentEntityViewModelCopyWith(CommentEntityViewModel value,
          $Res Function(CommentEntityViewModel) then) =
      _$CommentEntityViewModelCopyWithImpl<$Res, CommentEntityViewModel>;
  @useResult
  $Res call({int postId, int id, String name, String email, String body});
}

/// @nodoc
class _$CommentEntityViewModelCopyWithImpl<$Res,
        $Val extends CommentEntityViewModel>
    implements $CommentEntityViewModelCopyWith<$Res> {
  _$CommentEntityViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentEntityViewModelImplCopyWith<$Res>
    implements $CommentEntityViewModelCopyWith<$Res> {
  factory _$$CommentEntityViewModelImplCopyWith(
          _$CommentEntityViewModelImpl value,
          $Res Function(_$CommentEntityViewModelImpl) then) =
      __$$CommentEntityViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int postId, int id, String name, String email, String body});
}

/// @nodoc
class __$$CommentEntityViewModelImplCopyWithImpl<$Res>
    extends _$CommentEntityViewModelCopyWithImpl<$Res,
        _$CommentEntityViewModelImpl>
    implements _$$CommentEntityViewModelImplCopyWith<$Res> {
  __$$CommentEntityViewModelImplCopyWithImpl(
      _$CommentEntityViewModelImpl _value,
      $Res Function(_$CommentEntityViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? body = null,
  }) {
    return _then(_$CommentEntityViewModelImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CommentEntityViewModelImpl implements _CommentEntityViewModel {
  const _$CommentEntityViewModelImpl(
      {required this.postId,
      required this.id,
      required this.name,
      required this.email,
      required this.body});

  @override
  final int postId;
  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String body;

  @override
  String toString() {
    return 'CommentEntityViewModel(postId: $postId, id: $id, name: $name, email: $email, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentEntityViewModelImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId, id, name, email, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentEntityViewModelImplCopyWith<_$CommentEntityViewModelImpl>
      get copyWith => __$$CommentEntityViewModelImplCopyWithImpl<
          _$CommentEntityViewModelImpl>(this, _$identity);
}

abstract class _CommentEntityViewModel implements CommentEntityViewModel {
  const factory _CommentEntityViewModel(
      {required final int postId,
      required final int id,
      required final String name,
      required final String email,
      required final String body}) = _$CommentEntityViewModelImpl;

  @override
  int get postId;
  @override
  int get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$CommentEntityViewModelImplCopyWith<_$CommentEntityViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
