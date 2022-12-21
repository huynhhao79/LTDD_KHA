import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:phan4_bai1/models/user_obj.dart';

class userProvider {
  // lấy danh sách email trong firestore
  static Future<List<user>> get(String email) async {
    List<user> info = [];
    final snapshot = await FirebaseFirestore.instance
        .collection('users')
        .where('email', isEqualTo: email)
        .get();
    info = snapshot.docs
        .map((json) => user.fromJson(json.data() as Map<String, dynamic>))
        .toList();
    return info;
  }
  static Future<List<user>> getEmail() async {
    List<user> info = [];
    final snapshot = await FirebaseFirestore.instance.collection('user').get();

    info = snapshot.docs
        .map((json) => user.fromJson(json.data() as Map<String, dynamic>))
        .toList();
    return info;
  }
}