import 'package:image_picker/image_picker.dart';

import '../services/app_local_storage.dart';

Future<String?> getImageFromGallery() async {
  final pickedImg = await ImagePicker().pickImage(source: ImageSource.gallery);
  if (pickedImg != null) {
    AppLocal.cacheData(AppLocal.imageKey, pickedImg.path);
    return pickedImg.path;
  } else {
    return null;
  }
}

Future<String?> getImageFromCamera() async {
  final pickedImg = await ImagePicker().pickImage(source: ImageSource.camera);
  if (pickedImg != null) {
    AppLocal.cacheData(AppLocal.imageKey, pickedImg.path);
    return pickedImg.path;
  } else {
    return null;
  }
}
