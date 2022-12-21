import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:phan4_bai1/components/login.dart';
import '../models/user_provider.dart';
import '../models/user_obj.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final email = TextEditingController();
  final password = TextEditingController();
  final fullname = TextEditingController();
  final confirm = TextEditingController();
  final _auth = FirebaseAuth.instance;
  List<user> thongtinEmail = [];
  bool isEmailExist = false;
  CollectionReference thongTin = FirebaseFirestore.instance.collection('users');
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
   void load() async {
    final data = await userProvider.getEmail();
    if (!mounted) return;
    setState(() {
      thongtinEmail = data;
    });
  }
   Future<void> addUser() {
    return thongTin
        .add({
          'email': email.text.trim(),
          'password': password.text.trim(),
          'name': fullname.text.trim(),
          'rank': 0,
          'exp': 0,
          'money':0
        })
        .then((value) => Navigator.pop(context, 'Đăng kí thành công'))
        .catchError(
            (error) => Navigator.pop(context, 'Đăng kí thất bại $error'));
  }
   Future signUp() async {
    // kiểm tra dữ liệu trên giao diện
    if (email.text.trim() == '' ||
        password.text.trim() == '' ||
        fullname.text.trim() == '' ||
       confirm.text.trim() == '' ) {
      final snackBar = SnackBar(content: Text('Chưa điền thông tin tài khoản'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else if (password.text.trim().length < 0) {
      final snackBar =
          SnackBar(content: Text('Mật khẩu phải nhập ít nhất 6 ký tự'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      //chạy vòng lập kt email trùng
       for (var i = 0; i < thongtinEmail.length; i++) {
        if (email.text.trim() == thongtinEmail[i].email) {
          isEmailExist = true;
        }
      }
      if (isEmailExist == true) {
        final snackBar = SnackBar(content: Text('Email đã được sử dụng'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        isEmailExist = false;
      } else {
        try {
          addUser();
          final newUser = await _auth.createUserWithEmailAndPassword(
              email: email.text.trim(),
              password: password.text.trim());
        } catch (e) {
          final snackBar =
              SnackBar(content: Text('Thông tin tài khoản không hợp lệ'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      }
    }
   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 150.0),
            const Text(
              "ĐĂNG KÍ ",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
              child: TextField(
                controller: fullname,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Họ và tên',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                  prefix: Icon(Icons.mail),
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
              child: TextField(
                controller: password,
                obscureText: true,
                decoration: const InputDecoration(

                  border: OutlineInputBorder(),
                  prefix: Icon(Icons.key),
                  labelText: 'Mật khẩu',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
              child: TextField(
                controller: confirm,
                obscureText: true,
                decoration: const InputDecoration(

                  border: OutlineInputBorder(),
                  prefix: Icon(Icons.key),
                  labelText: 'xác nhận Mật khẩu',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: ElevatedButton(
                      child: const Text('Xác nhận'),
                      onPressed: () {
                        SignUp();
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.red)),
                    )),
              ],
            )
          ]),
        ));
  }
}