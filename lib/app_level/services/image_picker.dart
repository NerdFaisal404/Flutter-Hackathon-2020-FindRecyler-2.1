import 'dart:io';

import 'package:image_picker/image_picker.dart';

class ImagePickerService {
  ImagePickerService._();

  static final _picker = ImagePicker();

  static Future<File> getImage() async {
    File _image;

    final pickedFile = await _picker.getImage(
      source: ImageSource.camera,
      imageQuality: 60,
      maxHeight: 700,
      maxWidth: 700,
    );
    _image = File(pickedFile.path);
    return _image;
  }
}
