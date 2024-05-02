import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zagruzka_ekrana/src/presentation/blocs/user_details_page_bloc/costants/page_tab_enum.dart';
import 'package:zagruzka_ekrana/src/presentation/blocs/user_details_page_bloc/user_details_page_bloc.dart';
import 'package:zagruzka_ekrana/src/presentation/pages/components/album_container_tab.dart';
import 'package:zagruzka_ekrana/src/presentation/pages/components/post_conteiner_tab.dart';

class UserDetailsPageTab extends StatefulWidget {
  const UserDetailsPageTab({super.key});

  @override
  State<UserDetailsPageTab> createState() => _UserDetailsPageTabState();
}

class _UserDetailsPageTabState extends State<UserDetailsPageTab> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final loadingPageBloc = BlocProvider.of<UserDetailsPageBloc>(context);
      loadingPageBloc.add(LoadAlbumDataEvent());
      loadingPageBloc.add(LoadPostListDataEvent());
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDetailsPageBloc, UserDetailsPageState>(
        builder: (context, state) {
      final tabEnum = state.tab;
      switch (tabEnum) {
        case PageTabEnum.album:
          return AlbumContentTab(albumList: state.album);
        case PageTabEnum.posts:
          return PostContainerTab(postViewModel: state.posts);
        case PageTabEnum.todo:
          return const Placeholder();
        // TODO: Handle this case.
      }
    });
  }
}
