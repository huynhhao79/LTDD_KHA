import 'package:flutter/material.dart';

Widget Login() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/logo.jpg', width: 400, height: 200, fit: BoxFit.fitHeight,),
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
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red)),
          )),
      TextButton(
        onPressed: () {},
        child: const Text(
          'Quên mật khẩu',
          style: TextStyle(
            fontSize: 15,
            color: Colors.red
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('Bạn không có tài khoản?'),
          TextButton(
            child: const Text(
              'Đăng kí',
              style: TextStyle(fontSize: 15, color: Colors.red),
            ),
            onPressed: () {
            },
          )
        ],
      ),
    ],
  );
}
