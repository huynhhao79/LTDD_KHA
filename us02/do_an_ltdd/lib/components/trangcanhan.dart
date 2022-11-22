import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class trangcanhan extends StatefulWidget {
  const trangcanhan({super.key});

  @override
  State<trangcanhan> createState() => _trangcanhanState();
}

class _trangcanhanState extends State<trangcanhan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Text('Trang cá nhân',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, top: 30),
            child: Container(
              height: MediaQuery.of(context).size.height / 5 / 2,
              width: MediaQuery.of(context).size.width - 20,
              decoration: BoxDecoration(
                color: Colors.red.shade100,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0)),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 5 / 2.5,
                      width: MediaQuery.of(context).size.width / 5.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(1000.0),
                            topRight: Radius.circular(1000.0),
                            bottomRight: Radius.circular(1000.0),
                            bottomLeft: Radius.circular(1000.0)),
                      ),
                      child: Image(
                        image: AssetImage('assets/1.png'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 20),
                    child: Column(children: [
                      Padding(
                        padding: EdgeInsets.only(),
                        child: Text('Leve : 2',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(),
                        child: Text('Nguyễn Chí Khang',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0)),
                      ),
                    ]),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 30.0),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width - 20,
              decoration: BoxDecoration(
                color: Colors.red.shade100,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0)),
              ),
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.only(top: 10, right: 0),
                  child: Text('Đạo cụ',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 70),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(),
                        child: Image(
                          image: AssetImage('assets/tim.png'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Text('1',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: Image(
                          image: AssetImage('assets/den.png'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Text('2',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: Image(
                          image: AssetImage('assets/tien.png'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 0),
                        child: Text('600',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text('Hạng cá nhân',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0)),
                ),
                Image(
                  width: 200,
                  height: 200,
                  image: AssetImage('assets/khien.png'),
                ),
              ]),
            ),
          ),

          ////////nut dang xuat
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
                  Colors.red.shade300,
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22.0),
                  ),
                ),
              ),
              onPressed: () => {},
              child: Padding(
                  padding: EdgeInsets.all(10), child: Text('Đăng Xuất')),
            ),
          )
        ],
      ),
    );
  }
}
