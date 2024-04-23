// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_entity_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostEntityViewModel {
  int get userId => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  List<CommentEntityViewModel> get commentList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostEntityViewModelCopyWith<PostEntityViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostEntityViewModelCopyWith<$Res> {
  factory $PostEntityViewModelCopyWith(
          PostEntityViewModel value, $Res Function(PostEntityViewModel) then) =
      _$PostEntityViewModelCopyWithImpl<$Res, PostEntityViewModel>;
  @useResult
  $Res call(
      {int userId,
      int id,
      String title,
      String body,
      List<CommentEntityViewModel> commentList});
}

/// @nodoc
class _$PostEntityViewModelCopyWithImpl<$Res, $Val extends PostEntityViewModel>
    implements $PostEntityViewModelCopyWith<$Res> {
  _$PostEntityViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? commentList = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      commentList: null == commentList
          ? _value.commentList
          : commentList // ignore: cast_nullable_to_non_nullable
              as List<CommentEntityViewModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostEntityViewModelImplCopyWith<$Res>
    implements $PostEntityViewModelCopyWith<$Res> {
  factory _$$PostEntityViewModelImplCopyWith(_$PostEntityViewModelImpl value,
          $Res Function(_$PostEntityViewModelImpl) then) =
      __$$PostEntityViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int userId,
      int id,
      String title,
      String body,
      List<CommentEntityViewModel> commentList});
}

/// @nodoc
class __$$PostEntityViewModelImplCopyWithImpl<$Res>
    extends _$PostEntityViewModelCopyWithImpl<$Res, _$PostEntityViewModelImpl>
    implements _$$PostEntityViewModelImplCopyWith<$Res> {
  __$$PostEntityViewModelImplCopyWithImpl(_$PostEntityViewModelImpl _value,
      $Res Function(_$PostEntityViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? commentList = null,
  }) {
    return _then(_$PostEntityViewModelImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      commentList: null == commentList
          ? _value._commentList
          : commentList // ignore: cast_nullable_to_non_nullable
              as List<CommentEntityViewModel>,
    ));
  }
}

/// @nodoc

class _$PostEntityViewModelImpl implements _PostEntityViewModel {
  const _$PostEntityViewModelImpl(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body,
      final List<CommentEntityViewModel> commentList = const []})
      : _commentList = commentList;

  @override
  final int userId;
  @override
  final int id;
  @override
  final String title;
  @override
  final String body;
  final List<CommentEntityViewModel> _commentList;
  @override
  @JsonKey()
  List<CommentEntityViewModel> get commentList {
    if (_commentList is EqualUnmodifiableListView) return _commentList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commentList);
  }

  @override
  String toString() {
    return 'PostEntityViewModel(userId: $userId, id: $id, title: $title, body: $body, commentList: $commentList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostEntityViewModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            const DeepCollectionEquality()
                .equals(other._commentList, _commentList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, id, title, body,
      const DeepCollectionEquality().hash(_commentList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostEntityViewModelImplCopyWith<_$PostEntityViewModelImpl> get copyWith =>
      __$$PostEntityViewModelImplCopyWithImpl<_$PostEntityViewModelImpl>(
          this, _$identity);
}

abstract class _PostEntityViewModel implements PostEntityViewModel {
  const factory _PostEntityViewModel(
          {required final int userId,
          required final int id,
          required final String title,
          required final String body,
          final List<CommentEntityViewModel> commentList}) =
      _$PostEntityViewModelImpl;

  @override
  int get userId;
  @override
  int get id;
  @override
  String get title;
  @override
  String get body;
  @override
  List<CommentEntityViewModel> get commentList;
  @override
  @JsonKey(ignore: true)
  _$$PostEntityViewModelImplCopyWith<_$PostEntityViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
