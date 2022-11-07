import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

@override
void initState() {
  super.initState();
  // Implement some initialization operations here.
}

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    const Text(
      "ĐĂNG KÍ TÀI KHOẢN",
      style: TextStyle(
        color: Colors.white,
        fontSize: 40,
      ),
    ),
    Container(
      padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
      child: TextField(
        obscureText: true,
        decoration: const InputDecoration(
          icon: Icon(Icons.account_box),
          border: OutlineInputBorder(),
          labelText: 'Tên đăng nhập',
        ),
      ),
    ),
    Container(
      padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
      child: TextField(
        obscureText: true,
        decoration: const InputDecoration(
          icon: Icon(Icons.email),
          border: OutlineInputBorder(),
          labelText: 'Email',
        ),
      ),
    ),
    Container(
      padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
      child: TextField(
        obscureText: true,
        decoration: const InputDecoration(
          icon: Icon(Icons.key),
          border: OutlineInputBorder(),
          labelText: 'Mật khẩu',
        ),
      ),
    ),
    Container(
      padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
      child: TextField(
        obscureText: true,
        decoration: const InputDecoration(
          icon: Icon(Icons.key),
          border: OutlineInputBorder(),
          labelText: 'Xác nhận mật khẩu',
        ),
      ),
    ),
    Container(
      padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
      child: TextField(
        obscureText: true,
        decoration: const InputDecoration(
          icon: Icon(Icons.key),
          border: OutlineInputBorder(),
          labelText: 'OTP',
        ),
      ),
    ),
    Row(
      mainAxisAlignment:  MainAxisAlignment.center,
      children: <Widget>[
        Container(
        height: 50,
        padding: const EdgeInsets.fromLTRB(0, 10, 30, 10),
        child: ElevatedButton(
          child: const Text('Trở lại'),
          onPressed: () {
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.red)),
        )),
        Container(
        height: 50,
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: ElevatedButton(
          child: const Text('Xác nhận'),
          onPressed: () {
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.red)),
        )),
      ],
    )
  ]);

  }
}


  