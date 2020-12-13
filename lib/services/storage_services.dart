import 'package:firebase_storage/firebase_storage.dart';

class StorageServices {
  final String imageName;

  StorageServices({this.imageName});

  final FirebaseStorage fs = FirebaseStorage.instance;

  Future getImage() async {
    Reference _rootReference = fs.ref().child("");
    Reference pictureFolderRef =
        _rootReference.child("pictures").child("imageName");
    String imageURL = await pictureFolderRef.getDownloadURL();
    return imageURL;
  }
}
