import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zagruzka_ekrana/domain/usecases/get_user_usecase.dart';
import 'package:zagruzka_ekrana/presentation/view_models/user_entity_view_model_mapper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zagruzka_ekrana/presentation/view_models/user_entity_view_model.dart';

part 'home_page_bloc.freezed.dart';

part 'home_page_event.dart';

part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc(this.getUsersUsecase)
      : super(const HomePageState( percent: 0, users: [])) {
    on<InitializeHomePageEvent>(_onLoadingSlider);
  }

  final GetUsersUsecase getUsersUsecase;

  _onLoadingSlider(InitializeHomePageEvent event, Emitter<HomePageState> emit) async {
    double percent = 0;

    final timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      percent += 0.02;
      emit( state.copyWith(percent: percent));
    });

      final userList = await getUsersUsecase.call();


      final userViewModelList = userList.map((e) => UserEntityViewModelMapper.toViewModel(e))
          .toList();

      timer.cancel();

      percent = 1;

      emit(state.copyWith(
        percent: percent,
        users: userViewModelList,
      ));
  }
}
