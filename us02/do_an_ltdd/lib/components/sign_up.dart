import 'package:flutter/material.dart';
import 'package:phan4_bai1/components/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      SizedBox(height: 50.0),
      const Text(
        "ĐĂNG KÍ TÀI KHOẢN",
        style: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
          fontSize: 40,
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
        child: const TextField(
          obscureText: true,
          decoration: InputDecoration(
            icon: Icon(Icons.account_box),
            border: OutlineInputBorder(),
            labelText: 'Tên đăng nhập',
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
        child: const TextField(
          obscureText: true,
          decoration: InputDecoration(
            icon: Icon(Icons.email),
            border: OutlineInputBorder(),
            labelText: 'Email',
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
        child: const TextField(
          obscureText: true,
          decoration: InputDecoration(
            icon: Icon(Icons.key),
            border: OutlineInputBorder(),
            labelText: 'Mật khẩu',
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
        child: const TextField(
          obscureText: true,
          decoration: InputDecoration(
            icon: Icon(Icons.key),
            border: OutlineInputBorder(),
            labelText: 'Xác nhận mật khẩu',
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
        child: const TextField(
          obscureText: true,
          decoration: InputDecoration(
            icon: Icon(Icons.key),
            border: OutlineInputBorder(),
            labelText: 'OTP',
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red)),
              )),
        ],
      )
    ]));
  }
}
