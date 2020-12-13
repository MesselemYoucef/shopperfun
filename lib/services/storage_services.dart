import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_core/firebase_core.dart';


class StorageServices{


  final String imageName;

  StorageServices ({this.imageName});
  
  final FirebaseStorage fs = FirebaseStorage.instance;
  // Future<String> getImage async(){
  //   Reference _rootReference = fs.ref();
  // }

}