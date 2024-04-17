import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zagruzka_ekrana/di.dart';
import 'package:zagruzka_ekrana/domain/usecases/get_album_usecase.dart';
import 'package:zagruzka_ekrana/domain/usecases/get_comment_usecase.dart';
import 'package:zagruzka_ekrana/domain/usecases/get_photo_usecase.dart';
import 'package:zagruzka_ekrana/domain/usecases/get_post_usecase.dart';
import 'package:zagruzka_ekrana/domain/usecases/get_todo_usecase.dart';
import 'package:zagruzka_ekrana/presentation/home_page_bloc/home_page_bloc.dart';
import 'package:zagruzka_ekrana/presentation/pages/user_details_page.dart';
import 'package:zagruzka_ekrana/presentation/user_details_page_bloc/user_details_page_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: BlocBuilder<HomePageBloc, HomePageState>(
                  builder: (context, state) {
                return ListView.builder(
                  itemCount: state.users.length,
                  itemBuilder: (BuildContext context, int index) {
                    final user = state.users[index];
                    return ListTile(
                      leading: Text((index + 1).toString()),
                      title: GestureDetector(
                        child: Row(
                          children: [
                            Image.network(
                              'https://img.freepik.com/premium-vector/user-profile-icon-in-flat-style-member-avatar-vector-illustration-on-isolated-background-human-permission-sign-business-concept_157943-15752.jpg?w=740',
                              width: 50,
                              height: 50,
                            ),
                            Text(user.name),
                          ],
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BlocProvider(
                                create: (context) => UserDetailsPageBloc(
                                  getPostsUsecase: getIt.get<GetPostUsecase>(),
                                  getCommentUsecase:
                                      getIt.get<GetCommentUsecase>(),
                                  getAlbumUsecase: getIt.get<GetAlbumUsecase>(),
                                  getPhotoUsecase: getIt.get<GetPhotoUsecase>(),
                                  getTodoUsecase: getIt.get<GetTodoUsecase>(),
                                  user: user,
                                ),
                                child: const UserDetailsPage(),
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
