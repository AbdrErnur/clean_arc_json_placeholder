part of 'user_details_page_bloc.dart';
abstract class UserDetailsPageEvent{}

class LoadPostListDataEvent extends UserDetailsPageEvent{}
class LoadTodoListDataEvent extends UserDetailsPageEvent{}

class ChangePageTabEvent extends UserDetailsPageEvent{
  final PageTabEnum tabEnum;
  ChangePageTabEvent({required this.tabEnum});
}


class LoadAlbumDataEvent extends UserDetailsPageEvent{
  LoadAlbumDataEvent();
}

