import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:phan4_bai1/components/login.dart';

class quenmk extends StatefulWidget {
  const quenmk({super.key});

  @override
  State<quenmk> createState() => _quenmkState();
}

class _quenmkState extends State<quenmk> {
  final _email = TextEditingController();

  @override
  void dispose() {
    super.dispose();
  }

  Future passwordreset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _email.text.trim());
      showDialog(
        context: context,
        builder: ((context) {
          return AlertDialog(
            content: Text('link đặt lại mật khẩu đã được gửi về email'),
          );
        }),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(
        context: context,
        builder: ((context) {
          return AlertDialog(
            content: Text(e.message.toString()),
          );
        }),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepPurple[200]),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Nhập email bạn muốn khôi phục mật khẩu vào đây: ",
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
            child: TextField(
              controller: _email,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.done,
            ),
          ),
          MaterialButton(
            onPressed: (() {
              passwordreset();
            }),
            child: Text('Reset Password'),
            color: Colors.deepPurple[200],
          )
        ],
      ),
    );
  }
}
