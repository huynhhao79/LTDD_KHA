import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LichSuDau extends StatefulWidget {
  const LichSuDau({super.key});

  @override
  State<LichSuDau> createState() => _LichSuDauState();
}

class _LichSuDauState extends State<LichSuDau> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        // appBar: AppBar(actions: [
        //   // IconButton(onPressed: () {}, icon: Icon(Icons.))
        // ]),

        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bai.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.arrow_back_ios),
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 50, top: 30),
                  child: Text(
                    "Lịch Sử Đấu ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 20),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 10,
                    width: MediaQuery.of(context).size.width - 10,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white),
                      color: Color.fromARGB(255, 107, 108, 112),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 0, bottom: 0),
                              child: Text(
                                "Đấu Hạng ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10, bottom: 0),
                              child: Text(
                                "Trả lời đúng 6/10",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30, bottom: 0),
                              child: Text(
                                "Chiến thắng",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 0, bottom: 0),
                              child: Text(
                                "19h30p 11/11/2022 ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                //////////////////////////////////////

                Padding(
                  padding: EdgeInsets.only(left: 5, top: 20),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 10,
                    width: MediaQuery.of(context).size.width - 10,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white),
                      color: Color.fromARGB(255, 107, 108, 112),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 0, bottom: 0),
                              child: Text(
                                "Đấu Hạng ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10, bottom: 0),
                              child: Text(
                                "Trả lời đúng 6/10",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30, bottom: 0),
                              child: Text(
                                "Chiến thắng",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 0, bottom: 0),
                              child: Text(
                                "22h30p 10/11/2022 ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ), ///////////////////////////////////////////////////////////
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 20),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 10,
                    width: MediaQuery.of(context).size.width - 10,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white),
                      color: Color.fromARGB(255, 107, 108, 112),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 0, bottom: 0),
                              child: Text(
                                "Đấu Hạng ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10, bottom: 0),
                              child: Text(
                                "Trả lời đúng 6/10",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30, bottom: 0),
                              child: Text(
                                "Chiến thắng",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 0, bottom: 0),
                              child: Text(
                                "8h30p 5/11/2022 ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                /////////////////////////////////////////
                ///
                Padding(
                  padding: EdgeInsets.only(left: 5, top: 20),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 10,
                    width: MediaQuery.of(context).size.width - 10,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white),
                      color: Color.fromARGB(255, 107, 108, 112),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 0, bottom: 0),
                              child: Text(
                                "Đấu Hạng ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10, bottom: 0),
                              child: Text(
                                "Trả lời đúng 3/10",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30, bottom: 0),
                              child: Text(
                                "Thất bại",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 0, bottom: 0),
                              child: Text(
                                "1h30p 3/11/2022 ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }
}
