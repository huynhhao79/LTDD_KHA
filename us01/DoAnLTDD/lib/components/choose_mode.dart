import 'package:flutter/material.dart';

Widget Choose_Mode(){
return Center(
  child: Column(
    children: [
      Image.asset('assets/logo.jpg', width: 400, height: 200),
    Container(
      margin: const EdgeInsets.fromLTRB(0, 100, 0, 0),
      width: 300,
      height: 250,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text("Chọn chế độ chơi:",
          style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.normal,
          ),
          ),
          Container(
              padding: const EdgeInsets.fromLTRB(50, 40, 50, 25),
              child: ElevatedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Chơi đơn',
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
          Container(
              padding: const EdgeInsets.fromLTRB(50, 25, 50, 50),
              child: ElevatedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Đối kháng',
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
        ],
      ),
    )
    ],
    
  ),
  
);

}