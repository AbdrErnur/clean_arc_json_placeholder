// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PhotoViewModel {
  int get albomId => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get thumbnailUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhotoViewModelCopyWith<PhotoViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoViewModelCopyWith<$Res> {
  factory $PhotoViewModelCopyWith(
          PhotoViewModel value, $Res Function(PhotoViewModel) then) =
      _$PhotoViewModelCopyWithImpl<$Res, PhotoViewModel>;
  @useResult
  $Res call(
      {int albomId, int id, String title, String url, String thumbnailUrl});
}

/// @nodoc
class _$PhotoViewModelCopyWithImpl<$Res, $Val extends PhotoViewModel>
    implements $PhotoViewModelCopyWith<$Res> {
  _$PhotoViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albomId = null,
    Object? id = null,
    Object? title = null,
    Object? url = null,
    Object? thumbnailUrl = null,
  }) {
    return _then(_value.copyWith(
      albomId: null == albomId
          ? _value.albomId
          : albomId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotoViewModelImplCopyWith<$Res>
    implements $PhotoViewModelCopyWith<$Res> {
  factory _$$PhotoViewModelImplCopyWith(_$PhotoViewModelImpl value,
          $Res Function(_$PhotoViewModelImpl) then) =
      __$$PhotoViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int albomId, int id, String title, String url, String thumbnailUrl});
}

/// @nodoc
class __$$PhotoViewModelImplCopyWithImpl<$Res>
    extends _$PhotoViewModelCopyWithImpl<$Res, _$PhotoViewModelImpl>
    implements _$$PhotoViewModelImplCopyWith<$Res> {
  __$$PhotoViewModelImplCopyWithImpl(
      _$PhotoViewModelImpl _value, $Res Function(_$PhotoViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albomId = null,
    Object? id = null,
    Object? title = null,
    Object? url = null,
    Object? thumbnailUrl = null,
  }) {
    return _then(_$PhotoViewModelImpl(
      albomId: null == albomId
          ? _value.albomId
          : albomId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhotoViewModelImpl implements _PhotoViewModel {
  _$PhotoViewModelImpl(
      {required this.albomId,
      required this.id,
      required this.title,
      required this.url,
      required this.thumbnailUrl});

  @override
  final int albomId;
  @override
  final int id;
  @override
  final String title;
  @override
  final String url;
  @override
  final String thumbnailUrl;

  @override
  String toString() {
    return 'PhotoViewModel(albomId: $albomId, id: $id, title: $title, url: $url, thumbnailUrl: $thumbnailUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoViewModelImpl &&
            (identical(other.albomId, albomId) || other.albomId == albomId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, albomId, id, title, url, thumbnailUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoViewModelImplCopyWith<_$PhotoViewModelImpl> get copyWith =>
      __$$PhotoViewModelImplCopyWithImpl<_$PhotoViewModelImpl>(
          this, _$identity);
}

abstract class _PhotoViewModel implements PhotoViewModel {
  factory _PhotoViewModel(
      {required final int albomId,
      required final int id,
      required final String title,
      required final String url,
      required final String thumbnailUrl}) = _$PhotoViewModelImpl;

  @override
  int get albomId;
  @override
  int get id;
  @override
  String get title;
  @override
  String get url;
  @override
  String get thumbnailUrl;
  @override
  @JsonKey(ignore: true)
  _$$PhotoViewModelImplCopyWith<_$PhotoViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
