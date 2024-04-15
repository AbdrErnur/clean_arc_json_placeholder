import 'package:flutter/material.dart';
import 'package:zagruzka_ekrana/presentation/view_models/user_entity_view_model.dart';

class UserDetailsPage extends StatelessWidget {
  final UserEntityViewModel user;

  const UserDetailsPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(user.name)),
      ),
      body: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                child: Image.network(
                  'https://img.freepik.com/premium-vector/user-profile-icon-in-flat-style-member-avatar-vector-illustration-on-isolated-background-human-permission-sign-business-concept_157943-15752.jpg?w=740',
                  width: 150,
                  height: 150,
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
                            text: user.name,
                            style:
                                const TextStyle(fontWeight: FontWeight.normal)),
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
                        TextSpan(text: user.email),
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
                        TextSpan(text: user.phone),
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
                        TextSpan(text: user.website),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
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
