import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
              height: 250,
            ),
            Text(
              'Chúc mừng bạn: ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
              ),
            ),
            Text(
              name,
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
              ),
            ),
            Text(
              'Điểm của bạn: ${widget.score} / 5',
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
                      builder: (context) => cauhoi(
                        totalTimer: widget.totalTime,
                        questions: widget.questions,
                      ),
                    ),
                  );
                }),
            SizedBox(height: 40),
            ActionButton(
                title: 'Chơi tiếp',
                onTap: () {
                  Navigator.of(context).pop();
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
    _getdata();
    dochistoy();
    _updateman();
    _updateExp();
  }

  Future<void> _updateExp() async {
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

      final lastHighscore = user['exp'];

      // if (lastHighscore >= widget.score) {
      //   return;
      // }
      userRef.update({'exp': lastHighscore + 10});
      return;
    }

    userRef.set({
      'exp': widget.score,
    });
  }

  Future<void> _updateman() async {
    final authUser = FirebaseAuth.instance.currentUser;

    if (authUser == null) return;

    final userRef =
        FirebaseFirestore.instance.collection('toan').doc(authUser.uid);

    final userDoc = await userRef.get();
    if (userDoc.exists) {
      final user = userDoc.data();
      if (user == null) {
        return;
      }

      final lastHighscore = user['man1'];

      if (lastHighscore >= widget.score) {
        return;
      }
      userRef.update({'man1': widget.score});
      return;
    }

    userRef.set({
      'man1': widget.score,
    });
  }

  // String? _name = '';
  String name = '';
  String email = '';
  int? kn = 0;
  String? image = '';
  Future _getdata() async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get()
        .then((snapshot) async {
      if (snapshot.exists) {
        setState(() {
          name = snapshot.data()!["name"];
          email = snapshot.data()!["email"];
          kn = snapshot.data()!["exp"];
          image = snapshot.data()!["photoUrl"];
        });
      }
    });
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

  String ten = '';
  Future dochistoy() async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get()
        .then((snapshot) async {
      if (snapshot.exists) {
        setState(() {
          name = snapshot.data()!["name"];
          email = snapshot.data()!["email"];
        });
      }
    });
    await FirebaseFirestore.instance
        .collection('toan')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get()
        .then((snapshot) async {
      if (snapshot.exists) {
        setState(() {
          ten = snapshot.data()!["ten"];
          // email = snapshot.data()!["email"];
        });
      }
    });
    await FirebaseFirestore.instance.collection('history').add({
      'email': email,
      'name': name,
      'score': widget.score,
      'ten': ten,
      'thoigian': DateFormat('yyyy-MM-dd KK:mm:ss').format(DateTime.now())
    });
  }
}
