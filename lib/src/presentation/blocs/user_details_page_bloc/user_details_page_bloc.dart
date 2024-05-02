import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zagruzka_ekrana/src/domain/entities/album_entity.dart';
import 'package:zagruzka_ekrana/src/domain/entities/comment_entity.dart';
import 'package:zagruzka_ekrana/src/domain/entities/photo_entity.dart';
import 'package:zagruzka_ekrana/src/domain/entities/post_entity.dart';
import 'package:zagruzka_ekrana/src/domain/usecases/get_album_usecase.dart';
import 'package:zagruzka_ekrana/src/domain/usecases/get_comment_usecase.dart';
import 'package:zagruzka_ekrana/src/domain/usecases/get_photo_usecase.dart';
import 'package:zagruzka_ekrana/src/domain/usecases/get_post_usecase.dart';
import 'package:zagruzka_ekrana/src/domain/usecases/get_todo_usecase.dart';
import 'package:zagruzka_ekrana/src/presentation/blocs/user_details_page_bloc/costants/page_tab_enum.dart';
import 'package:zagruzka_ekrana/src/presentation/view_models/album_view_model.dart';
import 'package:zagruzka_ekrana/src/presentation/view_models/comment_entity_view_model.dart';
import 'package:zagruzka_ekrana/src/presentation/view_models/photo_view_model.dart';
import 'package:zagruzka_ekrana/src/presentation/view_models/post_entity_view_model.dart';
import 'package:zagruzka_ekrana/src/presentation/view_models/todo_view_model.dart';
import 'package:zagruzka_ekrana/src/presentation/view_models/todo_view_model_mapper.dart';
import 'package:zagruzka_ekrana/src/presentation/view_models/user_entity_view_model.dart';


part 'user_details_page_bloc.freezed.dart';

part 'user_details_page_event.dart';

part 'user_details_page_state.dart';

class UserDetailsPageBloc
    extends Bloc<UserDetailsPageEvent, UserDetailsPageState> {
  UserDetailsPageBloc({
    required this.getPostsUsecase,
    required this.getCommentUsecase,
    required this.getAlbumUsecase,
    required this.getPhotoUsecase,
    required this.getTodoUsecase,
    required UserEntityViewModel user,
  })  : _user = user,
        super(const UserDetailsPageState()) {
    on<ChangePageTabEvent>(_onChangePageTab);
    on<LoadAlbumDataEvent>(_onLoadAlbumEvent);
    on<LoadPostListDataEvent>(_onLoadPostEvent);
    on<LoadTodoListDataEvent>(_onLoadTodoEvent);
  }

  /// ******************************************************************///

  final UserEntityViewModel _user;

  final GetPostUsecase getPostsUsecase;
  final GetCommentUsecase getCommentUsecase;
  final GetAlbumUsecase getAlbumUsecase;
  final GetPhotoUsecase getPhotoUsecase;
  final GetTodoUsecase getTodoUsecase;

  UserEntityViewModel get user => _user;

  ///********************************************************************///

  Future<void> _onLoadAlbumEvent(
      LoadAlbumDataEvent event, Emitter<UserDetailsPageState> emit) async {
    // emit(state.copyWith(isLoading: true));
    if (state.album.isNotEmpty) return;
    final albumViewModelList = await fetchAlbums(_user.id);

    emit(state.copyWith(
      album: albumViewModelList,
    ));
  }

  Future<List<AlbumViewModel>> fetchAlbums(int userId) async {
    final albumList = await getAlbumUsecase.call();
    final photoList = await getPhotoUsecase.call();
    final filterAlbums = albumList.where((element) => element.userId == userId);

    final albumViewModelList = filterAlbums
        .map((e) => AlbumViewModel(
              userId: e.userId,
              id: e.id,
              title: e.title,
              photoList: _filterPhotoByAlbumId(e, photoList),
            ))
        .toList();
    return albumViewModelList;
  }

  List<PhotoViewModel> _filterPhotoByAlbumId(
      AlbumEntity albumEntity, List<PhotoEntity> photos) {
    final photoViewModel = photos
        .where((element) => element.albumId == albumEntity.id)
        .map((e) => PhotoViewModel(
            albumId: e.albumId,
            id: e.id,
            title: e.title,
            url: e.url,
            thumbnailUrl: e.thumbnailUrl))
        .toList();
    return photoViewModel;
  }

  ///***************************************************************************///

  Future<void> _onLoadPostEvent(
      LoadPostListDataEvent event, Emitter<UserDetailsPageState> emit) async {
    // emit(state.copyWith(isLoading: true));
    if (state.posts.isNotEmpty) return;
    final postViewModelList = await fetchPost(_user.id);

    emit(state.copyWith(
      posts: postViewModelList,
    ));
  }
  // Future<void> _onLoadPostEvent(
  //     LoadPostListDataEvent event, Emitter<UserDetailsPageState> emit) async {
  //   print('Загрузка списка постов для пользователя с ID ${_user.id}');
  //   if (state.posts.isNotEmpty) {
  //     print('Список постов уже загружен');
  //     return;
  //   }
  //   final postViewModelList = await fetchPost(_user.id);
  //   if (postViewModelList.isEmpty) {
  //     print('Не найдено постов для пользователя с ID ${_user.id}');
  //   } else {
  //     print('Получено ${postViewModelList.length} постов для пользователя с ID ${_user.id}');
  //   }
  //   emit(state.copyWith(posts: postViewModelList));
  // }


  Future<List<PostEntityViewModel>> fetchPost(int userId) async {
    final postsList = await getPostsUsecase.call();
    final commentList = await getCommentUsecase.call();
    final filterPost = postsList.where((element) => element.userId == userId);

    final postViewModelList = filterPost
        .map((e) => PostEntityViewModel(
              userId: e.userId,
              id: e.id,
              title: e.title,
              body: e.body,
              commentList: _filterCommentByPostId(e, commentList),
            ))
        .toList();
    return postViewModelList;
  }

  List<CommentEntityViewModel> _filterCommentByPostId(
      PostEntity postEntity, List<CommentEntity> comments) {
    final commentViewModel = comments
        .where((element) => element.postId == postEntity.id)
        .map((e) => CommentEntityViewModel(
            postId: e.postId,
            id: e.id,
            name: e.name,
            email: e.email,
            body: e.body))
        .toList();
    return commentViewModel;
  }

  ///***************************************************************************///
  Future<void> _onLoadTodoEvent(
      LoadTodoListDataEvent event, Emitter<UserDetailsPageState> emit) async {
    // emit(state.copyWith(isLoading: true));
    if (state.todo.isNotEmpty) return;
    final todoViewModelList = await fetchTodo(_user.id);

    emit(state.copyWith(
      todo: todoViewModelList,
    ));
  }

  Future<List<TodoViewModel>> fetchTodo(int userId) async {
    final todoList = await getTodoUsecase.call();
    final filteredTodo = todoList.where((todo) => todo.userId == userId);

    final todoViewModelList = filteredTodo
        .map(
          (e) => TodoViewModelMapper.toViewModel(e)).toList();
    return todoViewModelList;
  }

  ///********************************** Tab *****************************************///

  Future<void> _onChangePageTab(
      ChangePageTabEvent event, Emitter<UserDetailsPageState> emit) async {
    emit(state.copyWith(tab: event.tabEnum));
  }

  ///****************************************************************************///

}
