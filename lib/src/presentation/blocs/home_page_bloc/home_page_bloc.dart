import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zagruzka_ekrana/src/domain/usecases/get_user_usecase.dart';
import 'package:zagruzka_ekrana/src/presentation/view_models/user_entity_view_model_mapper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zagruzka_ekrana/src/presentation/view_models/user_entity_view_model.dart';

part 'home_page_bloc.freezed.dart';

part 'home_page_event.dart';

part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc({required GetUsersUsecase getUsersUsecase}) : _getUsersUsecase = getUsersUsecase,
        super(const HomePageState( percent: 0, users: [])) {
    on<InitializeHomePageEvent>(_onLoadingSlider);
  }

  final GetUsersUsecase _getUsersUsecase;

  _onLoadingSlider(InitializeHomePageEvent event, Emitter<HomePageState> emit) async {
    double percent = 0;

    final timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      percent += 0.02;
      emit( state.copyWith(percent: percent));
    });

      final userList = await _getUsersUsecase.call();


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