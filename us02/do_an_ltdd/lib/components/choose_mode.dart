import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:phan4_bai1/components/cauhoi.dart';

class Choose_Mode extends StatefulWidget {
  const Choose_Mode({super.key});

  @override
  State<Choose_Mode> createState() => _Choose_ModeState();
}

class _Choose_ModeState extends State<Choose_Mode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF7A9BEE),
        body: Center(
          child: Column(
            children: [
              Image.asset('assets/logo.jpg', width: 200, height: 200),
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
                    Text(
                      "Chọn chế độ chơi:",
                      style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.fromLTRB(50, 40, 50, 15),
                        child: ElevatedButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Chơi đơn',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const cauhoi()));
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.red)),
                        )),
                    Container(
                        padding: const EdgeInsets.fromLTRB(50, 25, 50, 50),
                        child: ElevatedButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Đối kháng',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ],
                          ),
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.red)),
                        )),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
