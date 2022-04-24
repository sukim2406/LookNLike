import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:whats_in_my_wardrobe/controllers/user_controller.dart';

class PostController extends GetxController {
  static PostController instance = Get.find();
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future getSuggestedPosts() async {
    try {
      return await firestore
          .collection('posts')
          .where('tags', arrayContains: 'suggested')
          .get()
          .then(
        (QuerySnapshot qs) {
          final result = qs.docs
              .map(
                (doc) => doc.data(),
              )
              .toList();
          return result;
        },
      );
    } catch (e) {
      print('getSuggestedPosts Error');
      print(
        e.toString(),
      );
    }
  }
}
