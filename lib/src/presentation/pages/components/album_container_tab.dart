import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zagruzka_ekrana/src/presentation/view_models/album_view_model.dart';
import 'package:zagruzka_ekrana/src/presentation/view_models/photo_view_model.dart';

class AlbumContentTab extends StatelessWidget {
  final List<AlbumViewModel> albumList;

  const AlbumContentTab({super.key, required this.albumList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children : albumList.map((album) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: ConstrainedBox(
          constraints:  BoxConstraints(maxHeight: MediaQuery.of(context).size.height*0.53,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(album.title),
              Flexible(child: _PhotosContainer(photoViewModel: album.photoList)),
            ],
          ),
        ),
      )).toList(),
    );
  }
}

class _PhotosContainer extends StatelessWidget {
  final List<PhotoViewModel> photoViewModel;

  const _PhotosContainer({required this.photoViewModel});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: photoViewModel.length,
      itemBuilder: (context, index) {
        final photo = photoViewModel[index];
        return Card(
          color: Colors.white54,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Align(
                      alignment: Alignment.center,
                      child: Image.network(photo.url),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(photo.title),
                ),
                // const Divider(),
              ],
            ),
          ),
        );
      },
    );
  }
}
