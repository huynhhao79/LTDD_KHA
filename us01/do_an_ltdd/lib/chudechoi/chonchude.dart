import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phan4_bai1/chudechoi/hacknao/choidonhacknao.dart';
import 'package:phan4_bai1/chudechoi/toanhoc/choidon.dart';
import 'package:phan4_bai1/chudechoi/xahoi/choidonxahoi.dart';

import 'package:phan4_bai1/models/action_button.dart';

class chonchude extends StatefulWidget {
  const chonchude({super.key});

  @override
  State<chonchude> createState() => _chonchudeState();
}

class _chonchudeState extends State<chonchude> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.black,
                ),
              ],
            ),
            SizedBox(
              height: 200,
            ),
            Text('Chơi đơn',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0)),
            SizedBox(
              height: 20,
            ),
            ActionButton(
                title: 'Toán học',
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => choidon()),
                  );
                }),
            SizedBox(
              height: 20,
            ),
            ActionButton(
                title: 'Hack não ',
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => choidonhacknao()),
                  );
                }),
            SizedBox(
              height: 20,
            ),
            ActionButton(
                title: 'Vật lý',
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => choidonxahoi()),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
