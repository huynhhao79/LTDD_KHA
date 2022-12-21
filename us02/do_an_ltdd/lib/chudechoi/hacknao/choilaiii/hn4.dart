import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:phan4_bai1/chudechoi/hacknao/cauhoihacknao.dart';
import 'package:phan4_bai1/chudechoi/hacknao/cauhoihacknao4.dart';
import 'package:phan4_bai1/chudechoi/toanhoc/cauhoi.dart';
import 'package:phan4_bai1/chudechoi/toanhoc/cauhoi1.dart';
import 'package:phan4_bai1/chudechoi/xahoi/xahoi.dart';
import 'package:phan4_bai1/models/action_button.dart';
import 'package:phan4_bai1/models/question.dart';

class hn4 extends StatefulWidget {
  const hn4({
    Key? key,
    required this.score,
    required this.questions,
    required this.totalTime,
  }) : super(key: key);

  final int score;
  final List<Question> questions;
  final int totalTime;
  @override
  _hnState createState() => _hnState();
}

class _hnState extends State<hn4> {
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
              'Result: ${widget.score} / 5',
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
                      builder: (context) => cauhoihacknao4(
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

  @override
  void initState() {
    super.initState();
    _updateHighscore();
  }

  Future<void> _updateHighscore() async {
    final authUser = FirebaseAuth.instance.currentUser;

    if (authUser == null) return;

    final userRef =
        FirebaseFirestore.instance.collection('users').doc(authUser.uid);

    final userDoc = await userRef.get();
    if (userDoc.exists) {
      final user = userDoc.data();
      if (user == null) {
        return;
      }

      final lastHighscore = user['score'];

      if (lastHighscore >= widget.score) {
        return;
      }
      userRef.update({'score': widget.score});
      return;
    }

    userRef.set({
      'email': authUser.email,
      'photoUrl': authUser.photoURL,
      'score': widget.score,
      'name': authUser.displayName,
    });
  }
}
