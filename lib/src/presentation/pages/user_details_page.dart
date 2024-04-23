import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zagruzka_ekrana/src/presentation/pages/components/user_details_page_tab.dart';
import 'package:zagruzka_ekrana/src/presentation/user_details_page_bloc/costants/page_tab_enum.dart';
import 'package:zagruzka_ekrana/src/presentation/user_details_page_bloc/user_details_page_bloc.dart';
import 'package:zagruzka_ekrana/src/presentation/view_models/user_entity_view_model.dart';

class UserDetailsPage extends StatefulWidget {
  const UserDetailsPage({super.key});

  @override
  State<UserDetailsPage> createState() => _UserDetailsPageState();
}

class _UserDetailsPageState extends State<UserDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final user = context.read<UserDetailsPageBloc>().user;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(user.name)),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          _UserDetailsHeader(userEntityViewModel: user),
          const Divider(),
          const UserDetailsPageTab(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: context.watch<UserDetailsPageBloc>().state.tab.index,
        onTap: (index) {
          final tabEnum = PageTabEnum.fromInt(index);
          final bloc = context.read<UserDetailsPageBloc>();
          bloc.add(ChangePageTabEvent(tabEnum: tabEnum));
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.web_stories),
            label: 'Вкладка 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_post_office),
            label: 'Вкладка 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note_alt_sharp),
            label: 'Вкладка 3',
          ),
        ],
        // currentIndex: _selectedIndex,
        // onTap: _onItemTapped,
      ),
    );
  }
}

class _UserDetailsHeader extends StatelessWidget {
  const _UserDetailsHeader({super.key, required this.userEntityViewModel});

  final UserEntityViewModel userEntityViewModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          child: Image.network(
            'https://img.freepik.com/premium-vector/user-profile-icon-in-flat-style-member-avatar-vector-illustration-on-isolated-background-human-permission-sign-business-concept_157943-15752.jpg?w=740',
            width: MediaQuery.of(context).size.width/4,
            height: MediaQuery.of(context).size.height/4,
          ),
        ),
        const SizedBox(width: 8.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black, fontSize: 18),
                children: [
                  const TextSpan(
                      text: 'Name: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: userEntityViewModel.name,
                      style: const TextStyle(fontWeight: FontWeight.normal)),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black, fontSize: 18),
                children: [
                  const TextSpan(
                      text: 'Email: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: userEntityViewModel.email),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black, fontSize: 18),
                children: [
                  const TextSpan(
                      text: 'Phone: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: userEntityViewModel.phone),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black, fontSize: 18),
                children: [
                  const TextSpan(
                      text: 'Website: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: userEntityViewModel.website),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
