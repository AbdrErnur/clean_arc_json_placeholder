part of 'user_details_page_bloc.dart';

@freezed
class UserDetailsPageState with _$UserDetailsPageState{
  const factory UserDetailsPageState({
    required List<PostEntityViewModel> posts,
    required List<CommentEntityViewModel> comment,
    required List<AlbumViewModel> album,
    required List<PhotoViewModel> photo,
    required List<TodoViewModel> todo,
    @Default(PageTabEnum.album) PageTabEnum tab,
})=_UserDetailsPageState;
}