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
  List<AlbumViewModel> get album => throw _privateConstructorUsedError;
  List<TodoViewModel> get todo => throw _privateConstructorUsedError;
  PageTabEnum get tab => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

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
      List<AlbumViewModel> album,
      List<TodoViewModel> todo,
      PageTabEnum tab,
      bool isLoading});
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
    Object? album = null,
    Object? todo = null,
    Object? tab = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostEntityViewModel>,
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as List<AlbumViewModel>,
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as List<TodoViewModel>,
      tab: null == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as PageTabEnum,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
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
      List<AlbumViewModel> album,
      List<TodoViewModel> todo,
      PageTabEnum tab,
      bool isLoading});
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
    Object? album = null,
    Object? todo = null,
    Object? tab = null,
    Object? isLoading = null,
  }) {
    return _then(_$UserDetailsPageStateImpl(
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostEntityViewModel>,
      album: null == album
          ? _value._album
          : album // ignore: cast_nullable_to_non_nullable
              as List<AlbumViewModel>,
      todo: null == todo
          ? _value._todo
          : todo // ignore: cast_nullable_to_non_nullable
              as List<TodoViewModel>,
      tab: null == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as PageTabEnum,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UserDetailsPageStateImpl implements _UserDetailsPageState {
  const _$UserDetailsPageStateImpl(
      {final List<PostEntityViewModel> posts = const [],
      final List<AlbumViewModel> album = const [],
      final List<TodoViewModel> todo = const [],
      this.tab = PageTabEnum.album,
      this.isLoading = false})
      : _posts = posts,
        _album = album,
        _todo = todo;

  final List<PostEntityViewModel> _posts;
  @override
  @JsonKey()
  List<PostEntityViewModel> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  final List<AlbumViewModel> _album;
  @override
  @JsonKey()
  List<AlbumViewModel> get album {
    if (_album is EqualUnmodifiableListView) return _album;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_album);
  }

  final List<TodoViewModel> _todo;
  @override
  @JsonKey()
  List<TodoViewModel> get todo {
    if (_todo is EqualUnmodifiableListView) return _todo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todo);
  }

  @override
  @JsonKey()
  final PageTabEnum tab;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'UserDetailsPageState(posts: $posts, album: $album, todo: $todo, tab: $tab, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailsPageStateImpl &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            const DeepCollectionEquality().equals(other._album, _album) &&
            const DeepCollectionEquality().equals(other._todo, _todo) &&
            (identical(other.tab, tab) || other.tab == tab) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_posts),
      const DeepCollectionEquality().hash(_album),
      const DeepCollectionEquality().hash(_todo),
      tab,
      isLoading);

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
      {final List<PostEntityViewModel> posts,
      final List<AlbumViewModel> album,
      final List<TodoViewModel> todo,
      final PageTabEnum tab,
      final bool isLoading}) = _$UserDetailsPageStateImpl;

  @override
  List<PostEntityViewModel> get posts;
  @override
  List<AlbumViewModel> get album;
  @override
  List<TodoViewModel> get todo;
  @override
  PageTabEnum get tab;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$UserDetailsPageStateImplCopyWith<_$UserDetailsPageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
