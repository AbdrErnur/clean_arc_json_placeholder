part of 'home_page_bloc.dart';



@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState({
    required double percent,
    required List<UserEntityViewModel> users,
  })=_HomePageState;
}
