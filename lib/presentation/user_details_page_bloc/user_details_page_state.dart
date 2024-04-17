part of 'user_details_page_bloc.dart';

@freezed
class UserDetailsPageState with _$UserDetailsPageState{
  const factory UserDetailsPageState({
    @Default([]) List<PostEntityViewModel> posts,
    @Default([]) List<AlbumViewModel> album,
    @Default([]) List<TodoViewModel> todo,
    @Default(PageTabEnum.album) PageTabEnum tab,
    @Default(false) bool isLoading,
})=_UserDetailsPageState;
}