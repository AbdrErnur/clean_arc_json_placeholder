import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:zagruzka_ekrana/di.dart';
import 'package:zagruzka_ekrana/service/routing/route_constants.dart';
import 'package:zagruzka_ekrana/src/domain/usecases/get_album_usecase.dart';
import 'package:zagruzka_ekrana/src/domain/usecases/get_comment_usecase.dart';
import 'package:zagruzka_ekrana/src/domain/usecases/get_photo_usecase.dart';
import 'package:zagruzka_ekrana/src/domain/usecases/get_post_usecase.dart';
import 'package:zagruzka_ekrana/src/domain/usecases/get_todo_usecase.dart';
import 'package:zagruzka_ekrana/src/presentation/home_page_bloc/home_page_bloc.dart';
import 'package:zagruzka_ekrana/src/presentation/pages/user_details_page.dart';
import 'package:zagruzka_ekrana/src/presentation/user_details_page_bloc/user_details_page_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage(
    this.title, {
    super.key,
  });

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text(widget.title)),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: BlocBuilder<HomePageBloc, HomePageState>(
                  builder: (context, state) {
                if (state.percent < 1) {
                  final w = MediaQuery.of(context).size.width / 2;
                  return Center(
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Container(
                          width: w,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12,
                          ),
                        ),
                        Container(
                          width: state.percent * w,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue,
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              '${(state.percent * 100).toInt()}%',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }
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
                          context.go(
                            AppRoutePaths.userDetails.fullPath,
                            extra: user,
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
