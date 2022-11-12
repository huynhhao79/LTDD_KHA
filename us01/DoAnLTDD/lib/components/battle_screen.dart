
import 'package:flutter/material.dart';

Widget Battle_Sceen() {
  return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
    const Text(
      "Đối kháng",
      style: TextStyle(
        color: Colors.white,
        fontSize: 40,
      ),
    ),
    Image.asset('assets/logo.jpg', width: 400, height: 200, fit: BoxFit.cover,),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star,
          color: Colors.yellow,
          size: 50,
        ),
        const Icon(
          Icons.star,
          color: Colors.yellow,
          size: 50,
        ),
        const Icon(
          Icons.star,
          color: Colors.yellow,
          size: 50,
        ),
        const Icon(
          Icons.star,
          size: 50,
        ),
      ],
    ),
    Container(
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
          padding: const EdgeInsets.fromLTRB(50, 150, 50, 100),
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
            onPressed: () {
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blueAccent)),
          )),
    )
  ]));
}
