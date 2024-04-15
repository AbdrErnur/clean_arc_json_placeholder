import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zagruzka_ekrana/domain/usecases/get_album_usecase.dart';
import 'package:zagruzka_ekrana/domain/usecases/get_comment_usecase.dart';
import 'package:zagruzka_ekrana/domain/usecases/get_photo_usecase.dart';
import 'package:zagruzka_ekrana/domain/usecases/get_post_usecase.dart';
import 'package:zagruzka_ekrana/domain/usecases/get_todo_usecase.dart';
import 'package:zagruzka_ekrana/presentation/user_details_page_bloc/costants/page_tab_enum.dart';
import 'package:zagruzka_ekrana/presentation/view_models/album_view_model.dart';
import 'package:zagruzka_ekrana/presentation/view_models/album_view_model_mapper.dart';
import 'package:zagruzka_ekrana/presentation/view_models/comment_entity_view_model.dart';
import 'package:zagruzka_ekrana/presentation/view_models/photo_view_model.dart';
import 'package:zagruzka_ekrana/presentation/view_models/post_entity_view_model.dart';
import 'package:zagruzka_ekrana/presentation/view_models/post_entity_view_model_mapper.dart';
import 'package:zagruzka_ekrana/presentation/view_models/todo_view_model.dart';
import 'package:zagruzka_ekrana/presentation/view_models/todo_view_model_mapper.dart';

import '../view_models/photo_view_model_mapper.dart';
part 'user_details_page_bloc.freezed.dart';


part 'user_details_page_event.dart';
part 'user_details_page_state.dart';

class UserDetailsPageBloc extends Bloc<UserDetailsPageEvent, UserDetailsPageState> {
  UserDetailsPageBloc({required this.getPostsUsecase,required this.getCommentUsecase,required
    this.getAlbumUsecase,required this.getPhotoUsecase, required this.getTodoUsecase})
      : super(const UserDetailsPageState( posts: [], comment: [], album: [], photo: [], todo: [])) {
    on<InitializeUserDetailsEvent>(_onInitialized);
  }

  final GetPostUsecase getPostsUsecase;
  final GetCommentUsecase getCommentUsecase;
  final GetAlbumUsecase getAlbumUsecase;
  final GetPhotoUsecase getPhotoUsecase;
  final GetTodoUsecase getTodoUsecase;

  Future<void> _onInitialized(InitializeUserDetailsEvent event, Emitter<UserDetailsPageState> emit) async {

    final postsList = await getPostsUsecase.call();
    final commentList = await getCommentUsecase.call();
    final albumList = await getAlbumUsecase.call();
    final photoList = await getPhotoUsecase.call();
    final todoList = await getTodoUsecase.call();

    final postsViewModelList = postsList
        .map((e) => PostEntityViewModelMapper.toViewModel(e))
        .toList();
    final commentViewModelList = commentList
        .map((e) => CommentEntityViewModel(
      postId: e.postId,
      id: e.id,
      name: e.name,
      email: e.email,
      body: e.body,
    ))
        .toList();
    final albumViewModelList = albumList.map((e) => AlbumViewModelMapper.toViewModel(e))
        .toList(growable: false);
    final photoViewModelList = photoList.map((e) => PhotoViewModelMapper.toViewModel(e)).toList(growable: false);
    final todoViewModelList = todoList.map((e) => TodoViewModelMapper.toViewModel(e)).toList(growable: false);

    emit(state.copyWith(
      posts: postsViewModelList,
      comment: commentViewModelList,
      album: albumViewModelList,
      photo: photoViewModelList,
      todo: todoViewModelList,
    ));
  }

}