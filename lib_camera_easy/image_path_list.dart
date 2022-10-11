import 'package:flutter_riverpod/flutter_riverpod.dart';

class ImagePath {
  ImagePath({required this.imagePath});

  final String imagePath;
}

final _imagePathList = [];

final imagePathListProvider = StateProvider((ref) {
  return _imagePathList;
});
