import 'dart:async';

import 'package:flutter/material.dart';
import 'package:phan4_bai1/chudechoi/toanhoc/choilai.dart';
import 'package:phan4_bai1/components/resut_screen.dart';

import 'package:phan4_bai1/components/shopeee.dart';
import 'package:phan4_bai1/models/question.dart';

class cauhoihacknao5 extends StatefulWidget {
  const cauhoihacknao5(
      {Key? key, required this.totalTimer, required this.questions})
      : super(key: key);

  final int totalTimer;
  final List<Question> questions;

  @override
  State<cauhoihacknao5> createState() => _cauhoihacknao2State();
}

class _cauhoihacknao2State extends State<cauhoihacknao5> {
  late int crtimer;
  late Timer _timer;
  int _crindex = 25;
  String _selectAnswer = '';
  int _score = 0;
  @override
  void initState() {
    super.initState();
    crtimer = widget.totalTimer;

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      print(crtimer);
      setState(() {
        crtimer -= 1;
      });
      if (crtimer == 0) {
        _timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Cruquestion = widget.questions[_crindex];
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    LinearProgressIndicator(
                      color: Colors.amber,
                      value: crtimer / widget.totalTimer,
                    ),
                    Center(
                      child: Text(
                        crtimer.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 25.0),
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
                        child: ListView(children: [
                          Text(
                            Cruquestion.question,
                            style: TextStyle(fontSize: 25),
                          ),
                        ]))),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                final answer = Cruquestion.answers[index];
                return AnswerTile(
                  isSelected: answer == _selectAnswer,
                  answer: answer,
                  correctAnswer: Cruquestion.correctAnswer,
                  onTap: () {
                    setState(() {
                      _selectAnswer = answer;
                    });

                    if (answer == Cruquestion.correctAnswer) {
                      _score++;
                    }

                    Future.delayed(Duration(milliseconds: 200), () {
                      if (_crindex == widget.questions.length - 1) {
                        //thay doi so luong cau hỏi
                        pushResultScreen(context);
                        return;
                      }
                      setState(() {
                        _crindex++;
                        _selectAnswer = '';
                      });
                    });
                  },
                );
              },
              itemCount: widget.questions[_crindex].answers.length,
            ),
          ),
        ],
      ),
    );
  }

  void pushResultScreen(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => choilai(
          questions: widget.questions,
          totalTime: widget.totalTimer,
          score: _score,
        ),
      ),
    );
  }
}

class AnswerTile extends StatelessWidget {
  const AnswerTile({
    Key? key,
    required this.isSelected,
    required this.answer,
    required this.correctAnswer,
    required this.onTap,
  }) : super(key: key);

  final bool isSelected;
  final String answer;
  final String correctAnswer;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      child: ListTile(
        onTap: () => onTap(),
        title: Text(
          answer,
          style: TextStyle(
            fontSize: 18,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  Color get cardColor {
    if (!isSelected) return Colors.white;

    if (answer == correctAnswer) {
      return Colors.teal;
    }

    return Colors.redAccent;
  }
}
