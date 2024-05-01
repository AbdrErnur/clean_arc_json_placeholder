//1 через контекст получить бллок
//2 check state, get token
// if token == null go to auth page
//  else go to home page
// context.read()

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:zagruzka_ekrana/di.dart';
import 'package:zagruzka_ekrana/features/auth/domain/usecase/sign_in_usecase.dart';
import 'package:zagruzka_ekrana/features/auth/domain/usecase/sign_up_usecase.dart';
import 'package:zagruzka_ekrana/features/auth/presentation/auth_page_bloc/sign_in_page_bloc.dart';
import 'package:zagruzka_ekrana/features/auth/presentation/pages/sign_in_screen.dart';
import 'package:zagruzka_ekrana/features/auth/presentation/pages/register_screen.dart';
import 'package:zagruzka_ekrana/features/auth/presentation/register_page_bloc/register_page_bloc.dart';
import 'package:zagruzka_ekrana/service/routing/route_constants.dart';
import 'package:zagruzka_ekrana/src/domain/usecases/get_album_usecase.dart';
import 'package:zagruzka_ekrana/src/domain/usecases/get_comment_usecase.dart';
import 'package:zagruzka_ekrana/src/domain/usecases/get_photo_usecase.dart';
import 'package:zagruzka_ekrana/src/domain/usecases/get_post_usecase.dart';
import 'package:zagruzka_ekrana/src/domain/usecases/get_todo_usecase.dart';
import 'package:zagruzka_ekrana/src/presentation/home_page_bloc/home_page_bloc.dart';
import 'package:zagruzka_ekrana/src/presentation/pages/my_home_page.dart';
import 'package:zagruzka_ekrana/src/presentation/pages/user_details_page.dart';
import 'package:zagruzka_ekrana/src/presentation/user_details_page_bloc/user_details_page_bloc.dart';
import 'package:zagruzka_ekrana/src/presentation/view_models/user_entity_view_model.dart';

final rootNaveKey = GlobalKey<NavigatorState>(debugLabel: 'rooNav');

class AppRouteConfig {
  const AppRouteConfig();

  static final GoRouter router = GoRouter(
      navigatorKey: rootNaveKey,
      initialLocation: AppRoutePaths.signIn.path,
      routes: [
        GoRoute(
          path: AppRoutePaths.signIn.path,
          name: AppRoutePaths.signIn.name,
          builder: (context, state) => BlocProvider(
              create: (context) =>
                  SignInPageBloc(createSignInUsecase: getIt.get<SignInUsecase>()),
              child: const SignInScreen()),
          routes: [
            GoRoute(
              path: AppRoutePaths.register.path,
              name: AppRoutePaths.register.name,
              builder: (context, state) => BlocProvider(
                  create: (context) => RegisterPageBloc(
                    creatSignUpUsecase: getIt.get<SignUpUsecase>(),
                  ),
                  child: const RegisterScreen()),
            ),
          ]
        ),
        GoRoute(
            path: AppRoutePaths.homePage.path,
            name: AppRoutePaths.homePage.name,
            parentNavigatorKey: rootNaveKey,
            builder: (context, state) => BlocProvider.value(
                value: getIt.get<HomePageBloc>(),
                child: const MyHomePage('Home Page')),
            routes: [
              GoRoute(
                parentNavigatorKey: rootNaveKey,
                path: AppRoutePaths.userDetails.path,
                name: AppRoutePaths.userDetails.name,
                builder: (context, state) => BlocProvider(
                  create: (context) => UserDetailsPageBloc(
                    getPostsUsecase: getIt.get<GetPostUsecase>(),
                    getCommentUsecase: getIt.get<GetCommentUsecase>(),
                    getAlbumUsecase: getIt.get<GetAlbumUsecase>(),
                    getPhotoUsecase: getIt.get<GetPhotoUsecase>(),
                    getTodoUsecase: getIt.get<GetTodoUsecase>(),
                    user: state.extra as UserEntityViewModel,
                  ),
                  child: const UserDetailsPage(),
                ),
              ),
          ]
        ),
      ]);
}
