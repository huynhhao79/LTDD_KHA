import 'package:flutter/material.dart';
import 'package:phan4_bai1/chudechoi/toanhoc/cauhoi.dart';
import 'package:phan4_bai1/chudechoi/toanhoc/cauhoi1.dart';
import 'package:phan4_bai1/models/action_button.dart';
import 'package:phan4_bai1/models/question.dart';

class choilai extends StatefulWidget {
  const choilai({
    Key? key,
    required this.score,
    required this.questions,
    required this.totalTime,
  }) : super(key: key);

  final int score;
  final List<Question> questions;
  final int totalTime;
  @override
  _choilaiState createState() => _choilaiState();
}

class _choilaiState extends State<choilai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Row(
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
              height: 300,
            ),
            Text(
              'Result: ${widget.score} / 10',
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
              ),
            ),
            SizedBox(height: 40),
            ActionButton(
                title: 'Play again',
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => cauhoi1(
                        totalTimer: widget.totalTime,
                        questions: widget.questions,
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
