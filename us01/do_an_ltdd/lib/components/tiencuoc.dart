import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phan4_bai1/components/doikhan.dart';

class Tiencuoc extends StatefulWidget {
  const Tiencuoc({super.key});

  @override
  State<Tiencuoc> createState() => _TiencuocState();
}

class _TiencuocState extends State<Tiencuoc> {
  bool valuefirst = false;
  bool valuesecond = false;
  bool val1 = false;
  final _topicController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: EdgeInsets.only(left: 0),
              child: Container(
                width: 380,
                height: 300,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text('Chọn chủ đề ',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Văn học ',
                          style: TextStyle(
                              fontSize: 17.0, fontWeight: FontWeight.bold),
                        ),
                        Checkbox(
                          value: this.valuesecond,
                          onChanged: (bool? value) {
                            setState(() {
                              this.valuesecond = value!;
                            });
                          },
                        ),
                        Text(
                          'Toán học ',
                          style: TextStyle(
                              fontSize: 17.0, fontWeight: FontWeight.bold),
                        ),
                        Checkbox(
                          value: this.valuefirst,
                          onChanged: (bool? value) {
                            setState(() {
                              this.valuefirst = value!;
                            });
                          },
                        ),
                        Text(
                          'Xã Hội ',
                          style: TextStyle(
                              fontSize: 17.0, fontWeight: FontWeight.bold),
                        ),
                        Checkbox(
                          value: this.val1,
                          onChanged: (bool? value) {
                            setState(() {
                              this.val1 = value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Text('Chọn mức cược ',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0)),
                    Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 175, 175, 175),
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: _topicController,
                        decoration:
                            const InputDecoration(labelText: "Tiền cược"),
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: ElevatedButton(
                          child: const Text('Xác nhận'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => doikhan()));
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.red)),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
