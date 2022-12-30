import 'dart:async';

import 'package:flutter/material.dart';

class doikhan extends StatefulWidget {
  const doikhan({super.key});

  @override
  State<doikhan> createState() => _doikhanState();
}

class _doikhanState extends State<doikhan> {
  bool valuefirst = false;
  bool valuesecond = false;
  bool val1 = false;
  final _topicController = TextEditingController();
  late Timer _timer;
  int _start = 10;

  void onEnd() {
    print('onEnd');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 0.0),
            child: Row(
              children: <Widget>[
                Stack(children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/khung.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 18),
                    child: Image(
                      image: AssetImage('assets/1.png'),
                    ),
                  )
                ]),
                Text('Nguyễn Văn A',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
                // Column(
                //   children: [
                //     Row(
                //       children: [
                //         Image(
                //           image: AssetImage('assets/1.png'),
                //         ),
                //       ],
                //     )
                //   ],
                // ),
                Padding(
                  padding: EdgeInsets.only(top: 0.0, left: 75.0),
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text('nguyễn thông',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          )),
                      Stack(children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/khung.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, top: 18),
                          child: Image(
                            image: AssetImage('assets/1.png'),
                          ),
                        )
                      ]),
                    ],
                  )),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 180.0),
            child: Row(children: [
              Image(
                image: AssetImage('assets/tien.png'),
              ),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(top: 0.0, left: 160.0),
            child: Row(children: [
              Text('Tiền cược: ',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
              Text('100',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, left: 185.0),
            child: Row(children: [
              // Text('00:30',
              //     style: TextStyle(
              //       color: Colors.black,
              //       fontWeight: FontWeight.bold,
              //     )),
            ]),
          ),
          Padding(
              padding: EdgeInsets.only(top: 15.0, left: 10.0),
              child: Row(
                children: [],
              )),
          Padding(
            padding: EdgeInsets.only(left: 100.0),
            child: Row(
              children: <Widget>[
                Text('Chủ đề : ',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
                Text('Văn học',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width - 20,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0)),
              border: Border.all(width: 2, color: Colors.black),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 45.0),
                    child: Container(
                        height: MediaQuery.of(context).size.height - 300.0,
                        child: ListView(children: [Text('Câu hỏi: .....')]))),
                Row()
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15.0, left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        height: MediaQuery.of(context).size.height / 15,
                        width: MediaQuery.of(context).size.width / 2.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0)),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Text('A.'),
                            )
                          ],
                        ))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0, left: 60.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        height: MediaQuery.of(context).size.height / 15,
                        width: MediaQuery.of(context).size.width / 2.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0)),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Text('B.'),
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15.0, left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        height: MediaQuery.of(context).size.height / 15,
                        width: MediaQuery.of(context).size.width / 2.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0)),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Text('C.'),
                            )
                          ],
                        ))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0, left: 60.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        height: MediaQuery.of(context).size.height / 15,
                        width: MediaQuery.of(context).size.width / 2.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0)),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Text('D.'),
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50.0, left: 120.0),
                child: Row(children: [
                  Container(
                      child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                Colors.red.shade300,
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                            onPressed: () => {},
                            child: const Padding(
                              padding: EdgeInsets.all(20.20),
                              child: Text('Trả Lời'),
                            ),
                          ),
                        ),
                      )
                    ],
                  ))
                ]),
              ),
            ],
          )
        ],
      ),
    );
  }
}
