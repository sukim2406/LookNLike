import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserController extends GetxController {
  static UserController instance = Get.find();
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void createUserDoc(userMap) async {
    try {
      await firestore.collection('users').doc(userMap['uid']).set(userMap);
    } catch (e) {
      print(
        e.toString(),
      );
    }
  }
}
