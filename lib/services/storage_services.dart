import 'package:firebase_storage/firebase_storage.dart';

class StorageServices {
  final String imageName;

  StorageServices({this.imageName});

  final ref = FirebaseStorage.instance.ref().child("products").child("real-mobile-2x-1400x770");

  void imageURL()async{
    var url = await ref.getDownloadURL();
    print("The downloaded URL is:========== $url");
  }
}
