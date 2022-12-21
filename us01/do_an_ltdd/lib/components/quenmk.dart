import 'package:flutter/material.dart';
import 'package:phan4_bai1/components/login.dart';

class quenmk extends StatefulWidget {
  const quenmk({super.key});

  @override
  State<quenmk> createState() => _quenmkState();
}

class _quenmkState extends State<quenmk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Column(children: [
          SizedBox(height: 150.0),
          const Text(
            "QUÊN MẬT KHẨU",
            style: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
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
