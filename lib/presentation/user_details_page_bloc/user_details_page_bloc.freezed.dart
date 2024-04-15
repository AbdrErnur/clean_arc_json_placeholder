// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_details_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserDetailsPageState {
  List<PostEntityViewModel> get posts => throw _privateConstructorUsedError;
  List<CommentEntityViewModel> get comment =>
      throw _privateConstructorUsedError;
  List<AlbumViewModel> get album => throw _privateConstructorUsedError;
  List<PhotoViewModel> get photo => throw _privateConstructorUsedError;
  List<TodoViewModel> get todo => throw _privateConstructorUsedError;
  PageTabEnum get tab => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDetailsPageStateCopyWith<UserDetailsPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsPageStateCopyWith<$Res> {
  factory $UserDetailsPageStateCopyWith(UserDetailsPageState value,
          $Res Function(UserDetailsPageState) then) =
      _$UserDetailsPageStateCopyWithImpl<$Res, UserDetailsPageState>;
  @useResult
  $Res call(
      {List<PostEntityViewModel> posts,
      List<CommentEntityViewModel> comment,
      List<AlbumViewModel> album,
      List<PhotoViewModel> photo,
      List<TodoViewModel> todo,
      PageTabEnum tab});
}

/// @nodoc
class _$UserDetailsPageStateCopyWithImpl<$Res,
        $Val extends UserDetailsPageState>
    implements $UserDetailsPageStateCopyWith<$Res> {
  _$UserDetailsPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
    Object? comment = null,
    Object? album = null,
    Object? photo = null,
    Object? todo = null,
    Object? tab = null,
  }) {
    return _then(_value.copyWith(
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostEntityViewModel>,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as List<CommentEntityViewModel>,
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as List<AlbumViewModel>,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as List<PhotoViewModel>,
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as List<TodoViewModel>,
      tab: null == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as PageTabEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDetailsPageStateImplCopyWith<$Res>
    implements $UserDetailsPageStateCopyWith<$Res> {
  factory _$$UserDetailsPageStateImplCopyWith(_$UserDetailsPageStateImpl value,
          $Res Function(_$UserDetailsPageStateImpl) then) =
      __$$UserDetailsPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PostEntityViewModel> posts,
      List<CommentEntityViewModel> comment,
      List<AlbumViewModel> album,
      List<PhotoViewModel> photo,
      List<TodoViewModel> todo,
      PageTabEnum tab});
}

/// @nodoc
class __$$UserDetailsPageStateImplCopyWithImpl<$Res>
    extends _$UserDetailsPageStateCopyWithImpl<$Res, _$UserDetailsPageStateImpl>
    implements _$$UserDetailsPageStateImplCopyWith<$Res> {
  __$$UserDetailsPageStateImplCopyWithImpl(_$UserDetailsPageStateImpl _value,
      $Res Function(_$UserDetailsPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
    Object? comment = null,
    Object? album = null,
    Object? photo = null,
    Object? todo = null,
    Object? tab = null,
  }) {
    return _then(_$UserDetailsPageStateImpl(
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostEntityViewModel>,
      comment: null == comment
          ? _value._comment
          : comment // ignore: cast_nullable_to_non_nullable
              as List<CommentEntityViewModel>,
      album: null == album
          ? _value._album
          : album // ignore: cast_nullable_to_non_nullable
              as List<AlbumViewModel>,
      photo: null == photo
          ? _value._photo
          : photo // ignore: cast_nullable_to_non_nullable
              as List<PhotoViewModel>,
      todo: null == todo
          ? _value._todo
          : todo // ignore: cast_nullable_to_non_nullable
              as List<TodoViewModel>,
      tab: null == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as PageTabEnum,
    ));
  }
}

/// @nodoc

class _$UserDetailsPageStateImpl implements _UserDetailsPageState {
  const _$UserDetailsPageStateImpl(
      {required final List<PostEntityViewModel> posts,
      required final List<CommentEntityViewModel> comment,
      required final List<AlbumViewModel> album,
      required final List<PhotoViewModel> photo,
      required final List<TodoViewModel> todo,
      this.tab = PageTabEnum.album})
      : _posts = posts,
        _comment = comment,
        _album = album,
        _photo = photo,
        _todo = todo;

  final List<PostEntityViewModel> _posts;
  @override
  List<PostEntityViewModel> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  final List<CommentEntityViewModel> _comment;
  @override
  List<CommentEntityViewModel> get comment {
    if (_comment is EqualUnmodifiableListView) return _comment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comment);
  }

  final List<AlbumViewModel> _album;
  @override
  List<AlbumViewModel> get album {
    if (_album is EqualUnmodifiableListView) return _album;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_album);
  }

  final List<PhotoViewModel> _photo;
  @override
  List<PhotoViewModel> get photo {
    if (_photo is EqualUnmodifiableListView) return _photo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photo);
  }

  final List<TodoViewModel> _todo;
  @override
  List<TodoViewModel> get todo {
    if (_todo is EqualUnmodifiableListView) return _todo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todo);
  }

  @override
  @JsonKey()
  final PageTabEnum tab;

  @override
  String toString() {
    return 'UserDetailsPageState(posts: $posts, comment: $comment, album: $album, photo: $photo, todo: $todo, tab: $tab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailsPageStateImpl &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            const DeepCollectionEquality().equals(other._comment, _comment) &&
            const DeepCollectionEquality().equals(other._album, _album) &&
            const DeepCollectionEquality().equals(other._photo, _photo) &&
            const DeepCollectionEquality().equals(other._todo, _todo) &&
            (identical(other.tab, tab) || other.tab == tab));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_posts),
      const DeepCollectionEquality().hash(_comment),
      const DeepCollectionEquality().hash(_album),
      const DeepCollectionEquality().hash(_photo),
      const DeepCollectionEquality().hash(_todo),
      tab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailsPageStateImplCopyWith<_$UserDetailsPageStateImpl>
      get copyWith =>
          __$$UserDetailsPageStateImplCopyWithImpl<_$UserDetailsPageStateImpl>(
              this, _$identity);
}

abstract class _UserDetailsPageState implements UserDetailsPageState {
  const factory _UserDetailsPageState(
      {required final List<PostEntityViewModel> posts,
      required final List<CommentEntityViewModel> comment,
      required final List<AlbumViewModel> album,
      required final List<PhotoViewModel> photo,
      required final List<TodoViewModel> todo,
      final PageTabEnum tab}) = _$UserDetailsPageStateImpl;

  @override
  List<PostEntityViewModel> get posts;
  @override
  List<CommentEntityViewModel> get comment;
  @override
  List<AlbumViewModel> get album;
  @override
  List<PhotoViewModel> get photo;
  @override
  List<TodoViewModel> get todo;
  @override
  PageTabEnum get tab;
  @override
  @JsonKey(ignore: true)
  _$$UserDetailsPageStateImplCopyWith<_$UserDetailsPageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
