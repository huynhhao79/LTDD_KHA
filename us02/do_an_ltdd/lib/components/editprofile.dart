import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class editprofile extends StatefulWidget {
  const editprofile({Key? key, required this.emaill, required this.nameee});
  final String emaill;
  final String nameee;
  @override
  State<editprofile> createState() => _editprofileState();
}

class _editprofileState extends State<editprofile> {
  String? name;
  String? email;

  @override
  void initState() {
    super.initState();
    
    email = widget.emaill;
    name = widget.nameee;
  }

//   Future<void> updatatt() async {
//     final authUser = FirebaseAuth.instance.currentUser;

//     if (authUser == null) return;

//     final userRef =
//         FirebaseFirestore.instance.collection('users').doc(authUser.uid);

//     final userDoc = await userRef.get();
//     userRef.update({'name': name});
//     // if (userDoc.exists) {
//     //   final user = userDoc.data();
//     //   if (user == null) {
//     //     return;
//     //   }

//     //   final editmail = user['email'];

//     //   if (editmail != name) {
//     //     return;
//     //   }
//     //   userRef.update({'score': name});
//     //   return;
//     // }

//     userRef.set({
//       'email': authUser.email,
//       'photoUrl': authUser.photoURL,
// //'score': widget.score,
//       'name': authUser.displayName,
//     });
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        title: Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Text('Sửa thông tin'),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CircleAvatar(
            radius: 70,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
            child: TextFormField(
              initialValue: email,
              decoration: InputDecoration(
                labelText: 'Email',
                // icon: Icon(Icons.account_box),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
            child: TextFormField(
              initialValue: name,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Tên'),
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.done,
              onSaved: (value) {
                name = value;
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
            onPressed: (() {
              // final updatapr = FirebaseFirestore.instance
              //     .collection('users')
              //     .doc(FirebaseAuth.instance.currentUser!.uid);
             
            }),
            child: Text('Lưu'),
            color: Colors.deepPurple[200],
          )
        ],
      ),
    );
  }
}
