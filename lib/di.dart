import 'package:get_it/get_it.dart';
import 'package:zagruzka_ekrana/data/data_source/data_source.dart';
import 'package:zagruzka_ekrana/data/repositories/album_repository_impl.dart';
import 'package:zagruzka_ekrana/data/repositories/comment_repository_impl.dart';
import 'package:zagruzka_ekrana/data/repositories/photo_repository_impl.dart';
import 'package:zagruzka_ekrana/data/repositories/post_repository_impl.dart';
import 'package:zagruzka_ekrana/data/repositories/todo_repository_impl.dart';
import 'package:zagruzka_ekrana/data/repositories/user_repository_impl.dart';
import 'package:zagruzka_ekrana/domain/repositories/album_repository.dart';
import 'package:zagruzka_ekrana/domain/repositories/comment_repository.dart';
import 'package:zagruzka_ekrana/domain/repositories/photo_repository.dart';
import 'package:zagruzka_ekrana/domain/repositories/post_repository.dart';
import 'package:zagruzka_ekrana/domain/repositories/todo_repository.dart';
import 'package:zagruzka_ekrana/domain/repositories/user_repository.dart';
import 'package:zagruzka_ekrana/domain/usecases/get_album_usecase.dart';
import 'package:zagruzka_ekrana/domain/usecases/get_comment_usecase.dart';
import 'package:zagruzka_ekrana/domain/usecases/get_photo_usecase.dart';
import 'package:zagruzka_ekrana/domain/usecases/get_post_usecase.dart';
import 'package:zagruzka_ekrana/domain/usecases/get_todo_usecase.dart';
import 'package:zagruzka_ekrana/domain/usecases/get_user_usecase.dart';

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