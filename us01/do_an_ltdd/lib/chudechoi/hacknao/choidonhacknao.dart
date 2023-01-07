import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phan4_bai1/chudechoi/hacknao/cauhoihacknao.dart';
import 'package:phan4_bai1/chudechoi/hacknao/cauhoihacknao1.dart';
import 'package:phan4_bai1/chudechoi/hacknao/cauhoihacknao2.dart';
import 'package:phan4_bai1/chudechoi/hacknao/cauhoihacknao3.dart';
import 'package:phan4_bai1/chudechoi/hacknao/cauhoihacknao4.dart';
import 'package:phan4_bai1/chudechoi/hacknao/cauhoihacknao5.dart';
import 'package:phan4_bai1/chudechoi/hacknao/cauhoihacknao6.dart';

import 'package:phan4_bai1/components/menu.dart';

import 'package:phan4_bai1/components/shopeee.dart';
import 'package:phan4_bai1/models/question.dart';

class choidonhacknao extends StatefulWidget {
  const choidonhacknao({super.key});

  @override
  State<choidonhacknao> createState() => _choidonhacknaoState();
}

class _choidonhacknaoState extends State<choidonhacknao> {
  final user = FirebaseAuth.instance.currentUser;
  String name = '';
  String email = '';
  int mony = 0;
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
          mony = snapshot.data()!["mony"];
          image = snapshot.data()!["photoUrl"];
        });
      }
    });
  }

  int den = 0;
  int tim = 0;
  Future _getshop() async {
    await FirebaseFirestore.instance
        .collection('shop')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get()
        .then((snapshot) async {
      if (snapshot.exists) {
        setState(() {
          // name = snapshot.data()!["name"];
          den = snapshot.data()!["den"];
          tim = snapshot.data()!["tim"];
        });
      }
    });
  }

  int man1 = 0;
  int man2 = 0;
  int man3 = 0;
  int man4 = 0;
  int man5 = 0;
  int man6 = 0;
  int man7 = 0;
  int man8 = 0;
  int man9 = 0;
  int man10 = 0;
  Future _getdatadeim() async {
    await FirebaseFirestore.instance
        .collection('hacknao')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get()
        .then((snapshot) async {
      if (snapshot.exists) {
        setState(() {
          man1 = snapshot.data()!["man1"];
          man2 = snapshot.data()!["man2"];
          man3 = snapshot.data()!["man3"];
          man4 = snapshot.data()!["man4"];
          man5 = snapshot.data()!["man5"];
          man6 = snapshot.data()!["man6"];
          man7 = snapshot.data()!["man7"];
          man8 = snapshot.data()!["man8"];
          man9 = snapshot.data()!["man9"];
          man10 = snapshot.data()!["man10"];
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _getdata();
    _getshop();
    _getdatadeim();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 206, 216, 255),
      body: Column(children: [
        Container(
          height: MediaQuery.of(context).size.height / 12,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 95, 65, 212),
            border: Border.all(width: 2, color: Colors.white),
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0)),
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back_ios),
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.only(left: 0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 12 / 2,
                  width: MediaQuery.of(context).size.width / 3.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0)),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 0, top: 0),
                        child: Image(
                          image: AssetImage('assets/tien.png'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.0, top: 5),
                        child: Text(mony.toString()),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const shoppee()));
                          },
                          icon: Icon(Icons.shopping_cart),
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 50),
                child: Container(
                  height: MediaQuery.of(context).size.height / 12 / 2,
                  width: MediaQuery.of(context).size.width / 3,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0)),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 0, top: 0),
                        child: Image(
                          image: AssetImage('assets/den.png'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.0, top: 5),
                        child: Text(den.toString()),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 0.0),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.shopping_cart),
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        ////////////////////////////////////////////////////////////////////////////////
        Padding(
          padding: EdgeInsets.only(top: 30),
          child: Text('Chơi đơn hack não',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0)),
        ),

        Container(
          padding: EdgeInsets.only(top: 30, left: 20),
          child: Row(children: [
            StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection('questions1')
                    .snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  final questiondocs = snapshot.data!.docs;
                  final questions = questiondocs
                      .map((e) => Question.fromQueryDocumentSnapshot(e))
                      .toList();

                  return StreamBuilder<QuerySnapshot>(
                    stream: FirebaseFirestore.instance
                        .collection('config')
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }

                      final configDocs = snapshot.data!.docs.first.data()
                          as Map<String, dynamic>;
                      final totalTime = configDocs['key'];

                      return Row(
                        children: [
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => cauhoihacknao(
                                                totalTimer: totalTime,
                                                questions: questions,
                                              )));
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(left: 0, top: 0),
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.height / 8,
                                    width:
                                        MediaQuery.of(context).size.width / 3.3,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20.0),
                                          topRight: Radius.circular(20.0),
                                          bottomRight: Radius.circular(20.0),
                                          bottomLeft: Radius.circular(20.0)),
                                      border: Border.all(
                                          width: 1,
                                          color:
                                              Color.fromARGB(255, 43, 42, 42)),
                                    ),
                                    child: Column(
                                      children: [
                                        Text('Màn 1',
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25.0)),
                                        Text('điểm: ' + man1.toString() + '/5',
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25.0)),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              //  Text('số câu hỏi : ${questions.length - 11}'),
                              //man1
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => cauhoihacknao2(
                                                totalTimer: totalTime,
                                                questions: questions,
                                              )));
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(left: 0, top: 0),
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.height / 8,
                                    width:
                                        MediaQuery.of(context).size.width / 3.3,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20.0),
                                          topRight: Radius.circular(20.0),
                                          bottomRight: Radius.circular(20.0),
                                          bottomLeft: Radius.circular(20.0)),
                                      border: Border.all(
                                          width: 1,
                                          color:
                                              Color.fromARGB(255, 43, 42, 42)),
                                    ),
                                    child: Column(
                                      children: [
                                        Text('Màn 3',
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25.0)),
                                        Text('điểm: ' + man3.toString() + '/5',
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25.0)),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              //man  3
                              //  Text('số câu hỏi : ${questions.length - 11}'),

                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => cauhoihacknao4(
                                                totalTimer: totalTime,
                                                questions: questions,
                                              )));
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(left: 0, top: 0),
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.height / 8,
                                    width:
                                        MediaQuery.of(context).size.width / 3.3,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20.0),
                                          topRight: Radius.circular(20.0),
                                          bottomRight: Radius.circular(20.0),
                                          bottomLeft: Radius.circular(20.0)),
                                      border: Border.all(
                                          width: 1,
                                          color:
                                              Color.fromARGB(255, 43, 42, 42)),
                                    ),
                                    child: Column(
                                      children: [
                                        Text('Màn 5',
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25.0)),
                                        Text('điểm: ' + man5.toString() + '/5',
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25.0)),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              //  Text('số câu hỏi : ${questions.length - 11}'),
                              //man 5
                              InkWell(
                                onTap: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => cauhoihacknao5(
                                  //               totalTimer: totalTime,
                                  //               questions: questions,
                                  //             )));
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(left: 0, top: 0),
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.height / 8,
                                    width:
                                        MediaQuery.of(context).size.width / 3.3,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20.0),
                                          topRight: Radius.circular(20.0),
                                          bottomRight: Radius.circular(20.0),
                                          bottomLeft: Radius.circular(20.0)),
                                      border: Border.all(
                                          width: 1,
                                          color:
                                              Color.fromARGB(255, 43, 42, 42)),
                                    ),
                                    child: Column(
                                      children: [
                                        Text('Màn 7',
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25.0)),
                                        Text('điểm: ' + man7.toString() + '/5',
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25.0)),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              //  Text('số câu hỏi : ${questions.length - 11}'),
                              //man 7
                              InkWell(
                                onTap: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => xahoi8(
                                  //               totalTimer: totalTime,
                                  //               questions: questions,
                                  //             )));
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(left: 0, top: 0),
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.height / 8,
                                    width:
                                        MediaQuery.of(context).size.width / 3.3,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20.0),
                                          topRight: Radius.circular(20.0),
                                          bottomRight: Radius.circular(20.0),
                                          bottomLeft: Radius.circular(20.0)),
                                      border: Border.all(
                                          width: 1,
                                          color:
                                              Color.fromARGB(255, 43, 42, 42)),
                                    ),
                                    child: Column(
                                      children: [
                                        Text('Màn 9',
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25.0)),
                                        Text('điểm: ' + man9.toString() + '/5',
                                            style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25.0)),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          // man 9
                          Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                cauhoihacknao1(
                                                  totalTimer: totalTime,
                                                  questions: questions,
                                                )));
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 0, top: 0),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              8,
                                      width: MediaQuery.of(context).size.width /
                                          3.3,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20.0),
                                            topRight: Radius.circular(20.0),
                                            bottomRight: Radius.circular(20.0),
                                            bottomLeft: Radius.circular(20.0)),
                                        border: Border.all(
                                            width: 1,
                                            color: Color.fromARGB(
                                                255, 43, 42, 42)),
                                      ),
                                      child: Column(
                                        children: [
                                          Text('Màn 2',
                                              style: TextStyle(
                                                  color: Colors.deepPurple,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25.0)),
                                          Text(
                                              'điểm: ' + man2.toString() + '/5',
                                              style: TextStyle(
                                                  color: Colors.deepPurple,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25.0)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                ///////////man 2
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                cauhoihacknao3(
                                                  totalTimer: totalTime,
                                                  questions: questions,
                                                )));
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 0, top: 0),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              8,
                                      width: MediaQuery.of(context).size.width /
                                          3.3,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20.0),
                                            topRight: Radius.circular(20.0),
                                            bottomRight: Radius.circular(20.0),
                                            bottomLeft: Radius.circular(20.0)),
                                        border: Border.all(
                                            width: 1,
                                            color: Color.fromARGB(
                                                255, 43, 42, 42)),
                                      ),
                                      child: Column(
                                        children: [
                                          Text('Màn 4',
                                              style: TextStyle(
                                                  color: Colors.deepPurple,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25.0)),
                                          Text(
                                              'điểm: ' + man4.toString() + '/5',
                                              style: TextStyle(
                                                  color: Colors.deepPurple,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25.0)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                ///////////////////man 4
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                cauhoihacknao5(
                                                  totalTimer: totalTime,
                                                  questions: questions,
                                                )));
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 0, top: 0),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              8,
                                      width: MediaQuery.of(context).size.width /
                                          3.3,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20.0),
                                            topRight: Radius.circular(20.0),
                                            bottomRight: Radius.circular(20.0),
                                            bottomLeft: Radius.circular(20.0)),
                                        border: Border.all(
                                            width: 1,
                                            color: Color.fromARGB(
                                                255, 43, 42, 42)),
                                      ),
                                      child: Column(
                                        children: [
                                          Text('Màn 6',
                                              style: TextStyle(
                                                  color: Colors.deepPurple,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25.0)),
                                          Text(
                                              'điểm: ' + man6.toString() + '/5',
                                              style: TextStyle(
                                                  color: Colors.deepPurple,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25.0)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                ///////////man 6
                                InkWell(
                                  onTap: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) => xahoi7(
                                    //               totalTimer: totalTime,
                                    //               questions: questions,
                                    //             )));
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 0, top: 0),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              8,
                                      width: MediaQuery.of(context).size.width /
                                          3.3,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20.0),
                                            topRight: Radius.circular(20.0),
                                            bottomRight: Radius.circular(20.0),
                                            bottomLeft: Radius.circular(20.0)),
                                        border: Border.all(
                                            width: 1,
                                            color: Color.fromARGB(
                                                255, 43, 42, 42)),
                                      ),
                                      child: Column(
                                        children: [
                                          Text('Màn 8',
                                              style: TextStyle(
                                                  color: Colors.deepPurple,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25.0)),
                                          Text(
                                              'điểm: ' + man8.toString() + '/5',
                                              style: TextStyle(
                                                  color: Colors.deepPurple,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25.0)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                ////////////////man 8
                                InkWell(
                                  onTap: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) => xahoi9(
                                    //               totalTimer: totalTime,
                                    //               questions: questions,
                                    //             )));
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 0, top: 0),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              8,
                                      width: MediaQuery.of(context).size.width /
                                          3.3,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20.0),
                                            topRight: Radius.circular(20.0),
                                            bottomRight: Radius.circular(20.0),
                                            bottomLeft: Radius.circular(20.0)),
                                        border: Border.all(
                                            width: 1,
                                            color: Color.fromARGB(
                                                255, 43, 42, 42)),
                                      ),
                                      child: Column(
                                        children: [
                                          Text('Màn 10',
                                              style: TextStyle(
                                                  color: Colors.deepPurple,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25.0)),
                                          Text(
                                              'điểm: ' +
                                                  man10.toString() +
                                                  '/5',
                                              style: TextStyle(
                                                  color: Colors.deepPurple,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25.0)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                                ///////////////man 10000000000000000
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  );
                }),
          ]),
        ),
        //////////////////////////////////////////////

        ////////////////////////////////////////////////////
      ]),
    );
  }
}
