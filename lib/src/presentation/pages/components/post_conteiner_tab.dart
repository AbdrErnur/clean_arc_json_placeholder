import 'package:flutter/material.dart';
import 'package:zagruzka_ekrana/src/presentation/view_models/post_entity_view_model.dart';

class PostContainerTab extends StatelessWidget {
  final List<PostEntityViewModel> postViewModel;

  const PostContainerTab({super.key, required this.postViewModel});

  @override
  Widget build(BuildContext context) {
    if (postViewModel.isEmpty) {
      return const Center(child: Text("Нет данных для отображения"));
    }
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
      child: PageView.builder(
          itemCount: postViewModel.length,
          itemBuilder: (context, index) {
            final post = postViewModel[index];
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                elevation: 4,
                child: ListTile(
                  title: Text(
                    post.title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(post.body),
                ),
              ),
            );
          }),
    );
  }
}
