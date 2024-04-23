import 'package:get_it/get_it.dart';
import 'package:zagruzka_ekrana/src/data/data_source/data_source.dart';
import 'package:zagruzka_ekrana/src/data/repositories/album_repository_impl.dart';
import 'package:zagruzka_ekrana/src/data/repositories/comment_repository_impl.dart';
import 'package:zagruzka_ekrana/src/data/repositories/photo_repository_impl.dart';
import 'package:zagruzka_ekrana/src/data/repositories/post_repository_impl.dart';
import 'package:zagruzka_ekrana/src/data/repositories/todo_repository_impl.dart';
import 'package:zagruzka_ekrana/src/data/repositories/user_repository_impl.dart';
import 'package:zagruzka_ekrana/src/domain/repositories/album_repository.dart';
import 'package:zagruzka_ekrana/src/domain/repositories/comment_repository.dart';
import 'package:zagruzka_ekrana/src/domain/repositories/photo_repository.dart';
import 'package:zagruzka_ekrana/src/domain/repositories/post_repository.dart';
import 'package:zagruzka_ekrana/src/domain/repositories/todo_repository.dart';
import 'package:zagruzka_ekrana/src/domain/usecases/get_album_usecase.dart';
import 'package:zagruzka_ekrana/src/domain/usecases/get_comment_usecase.dart';
import 'package:zagruzka_ekrana/src/domain/usecases/get_photo_usecase.dart';
import 'package:zagruzka_ekrana/src/domain/usecases/get_post_usecase.dart';
import 'package:zagruzka_ekrana/src/domain/usecases/get_todo_usecase.dart';
import 'package:zagruzka_ekrana/src/domain/usecases/get_user_usecase.dart';

import 'src/domain/repositories/user_repository.dart';

final getIt = GetIt.instance;

void setUp(){
  getIt.registerSingleton<DataSource>(DataSource());

  getIt.registerSingleton<UserRepository>(UserRepositoryImpl(getIt.get<DataSource>()));
  getIt.registerSingleton<GetUsersUsecase>(GetUsersUsecase(getIt.get<UserRepository>()));

  getIt.registerSingleton<PostRepository>(PostRepositoryImpl(getIt.get<DataSource>()));
  getIt.registerSingleton<GetPostUsecase>(GetPostUsecase(getIt.get<PostRepository>()));

  getIt.registerSingleton<PhotoRepository>(PhotoRepositoryImpl(getIt.get<DataSource>()));
  getIt.registerSingleton<GetPhotoUsecase>(GetPhotoUsecase(getIt.get<PhotoRepository>()));

  getIt.registerSingleton<CommentRepository>(CommentRepositoryImpl(getIt.get<DataSource>()));
  getIt.registerSingleton<GetCommentUsecase>(GetCommentUsecase(getIt.get<CommentRepository>()));

  getIt.registerSingleton<AlbumRepository>(AlbumRepositoryImpl(getIt.get<DataSource>()));
  getIt.registerSingleton<GetAlbumUsecase>(GetAlbumUsecase(getIt.get<AlbumRepository>()));

  getIt.registerSingleton<TodoRepository>(TodoRepositoryImpl(getIt.get<DataSource>()));
  getIt.registerSingleton<GetTodoUsecase>(GetTodoUsecase(getIt.get<TodoRepository>()));
}