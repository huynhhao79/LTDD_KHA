import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class thang_thuong extends StatefulWidget {
  const thang_thuong({super.key});

  @override
  State<thang_thuong> createState() => _thang_thuongState();
}

class _thang_thuongState extends State<thang_thuong> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Center(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text('Chiến thắng ',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0)),
          Image.asset(
            'assets/chienthang.png',
            width: 300,
            height: 300,
            fit: BoxFit.fitHeight,
          ),
          Text('Chúc mừng bạn đã qua màn ',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0)),
          Text('Màn 02',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0)),
          Text('Thời gian : 00:50',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0)),
          Text('Kinh nghiệm : +30',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0)),
          SizedBox(
            height: 150,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 50),
                child: Container(
                    width: 120,
                    height: 50,
                    child: ElevatedButton(
                      child: const Text('Chơi lại'),
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blueAccent),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0),
                          ),
                        ),
                      ),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50),
                child: Container(
                    width: 120,
                    height: 50,
                    child: ElevatedButton(
                      child: const Text('Qua màn'),
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blueAccent),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0),
                          ),
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ],
      ),
    )));
  }
}
