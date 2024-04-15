import 'package:flutter/material.dart';
import 'package:zagruzka_ekrana/presentation/user_details_page_bloc/costants/page_tab_enum.dart';

class UserDetailsPageTab extends StatelessWidget {
  final PageTabEnum tabEnum;
  const UserDetailsPageTab({super.key, required this.tabEnum});

  @override
  Widget build(BuildContext context) {
    switch(tabEnum){
      case PageTabEnum.album:
        return Text('album');
      case PageTabEnum.posts:
        return Text('posts');
      case PageTabEnum.todo:
        return Text('todo');
    }
  }
}
