import 'package:flutter/material.dart';
import 'package:phan4_bai1/components/home_page.dart';
import 'package:phan4_bai1/components/sign_up.dart';
import 'package:phan4_bai1/home.dart';

class Login extends StatefulWidget {
  static String tag = 'login-page';
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.fitHeight,
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 25, 0, 25),
          child: TextField(
            decoration: const InputDecoration(
              icon: Icon(Icons.email),
              border: OutlineInputBorder(),
              labelText: 'Tên đăng nhập',
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
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
            height: 50,
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: ElevatedButton(
              child: const Text('Đăng nhập'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const homeapp()));
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22.0),
                  ),
                ),
              ),
            )),
        Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: ElevatedButton(
              child: const Text('Đăng Kí'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SignUp()));
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22.0),
                  ),
                ),
              ),
            )),
       
        TextButton(
          onPressed: () {},
          child: const Text(
            'Quên mật khẩu',
            style: TextStyle(fontSize: 15, color: Colors.red),
          ),
        ),
      ],
    ));
  }
}
