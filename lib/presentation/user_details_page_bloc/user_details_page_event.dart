part of 'user_details_page_bloc.dart';
abstract class UserDetailsPageEvent{}

class InitializeUserDetailsEvent extends UserDetailsPageEvent{}

class ChangePageTabEvent extends UserDetailsPageEvent{
  final PageTabEnum tabEnum;

  ChangePageTabEvent({required this.tabEnum});
}
