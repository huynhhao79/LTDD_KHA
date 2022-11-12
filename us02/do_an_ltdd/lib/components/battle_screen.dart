import 'package:flutter/material.dart';

Widget Battle_Sceen() {
  return Scaffold(
      backgroundColor: const Color(0xFF7A9BEE),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        const Text(
          "Đối kháng",
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: 50,
            ),
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: 50,
            ),
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: 50,
            ),
            Icon(
              Icons.star,
              size: 50,
            ),
          ],
        ),
        Image(
          image: AssetImage('assets/rank.png'),
          width: 200,
          height: 200,
        ),
        const Text(
          "Bạc I",
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(0, 70, 0, 0),
          width: 300,
          height: 250,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              // Text(
              //   "Chọn chế độ chơi:",
              //   style: TextStyle(
              //     fontSize: 20,
              //     fontStyle: FontStyle.normal,
              //   ),
              // ),
              // Container(
              //     padding: const EdgeInsets.fromLTRB(50, 40, 50, 25),
              //     child: ElevatedButton(
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           const Text(
              //             'Chơi đơn',
              //             style: TextStyle(fontSize: 20, color: Colors.black),
              //           ),
              //         ],
              //       ),
              //       onPressed: () {},
              //       style: ButtonStyle(
              //           backgroundColor:
              //               MaterialStateProperty.all<Color>(Colors.red)),
              //     )),
              Container(
                  padding: const EdgeInsets.fromLTRB(50, 100, 50, 50),
                  child: ElevatedButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Tìm đối thủ',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ],
                    ),
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22.0),
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        )
      ])));
}
