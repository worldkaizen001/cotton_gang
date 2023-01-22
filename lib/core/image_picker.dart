import 'dart:io';
import 'package:image_picker/image_picker.dart';

File? imagePicked;

Future getImage(String selectMode) async {

  final picker = ImagePicker();
  XFile? pickedFile;
  if (selectMode == 'camera') {
    pickedFile = await picker.pickImage(source: ImageSource.camera);
  } else {
    pickedFile = await picker.pickImage(source: ImageSource.gallery);
  }

  if (pickedFile != null) {
    imagePicked = File(pickedFile.path);
  }
}