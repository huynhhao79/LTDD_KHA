import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phan4_bai1/components/lichsudau.dart';
import 'package:phan4_bai1/components/login.dart';
import 'package:phan4_bai1/models/user_obj.dart';

class trangcanhan extends StatefulWidget {
  const trangcanhan({super.key});

  @override
  State<trangcanhan> createState() => _trangcanhanState();
}

class _trangcanhanState extends State<trangcanhan> {
  String email="";
   final userr = FirebaseAuth.instance.currentUser!;
   final _formKey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;
  CollectionReference _user = FirebaseFirestore.instance.collection('users');
   void getEmail() async {
    final user = _auth.currentUser;
    if (user != null) {
      email = user.email.toString();
    }
  }
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bai.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 50),
            child: Text('Trang cá nhân',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, top: 30),
            child: Container(
              height: MediaQuery.of(context).size.height / 5 / 2,
              width: MediaQuery.of(context).size.width - 20,
              decoration: BoxDecoration(
                color: Colors.red.shade100,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0)),
              ),
              child: Row(
                children: [
                  StreamBuilder<QuerySnapshot>(
                      stream: FirebaseFirestore.instance
                          .collection('users')
                          .snapshots(),
                      builder: ((context, snapshot) {
                        if (!snapshot.hasData)
                          return Center(
                            child: CircularProgressIndicator(),
                          );

                        final users = snapshot.data!.docs;
                        return Row(
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/khung.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Image(
                                image: AssetImage('assets/1.png'),
                              ),
                            ),
                            // Text(
                            //   users[Index]['email'],
                            // ),
                          ],
                        );
                      })),
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 20),
                    child: Column(children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 0),
                            child: Text('Level: 2',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25.0)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Container(
                                height: MediaQuery.of(context).size.height / 23,
                                width: MediaQuery.of(context).size.width / 3,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20.0),
                                      topRight: Radius.circular(20.0),
                                      bottomRight: Radius.circular(20.0),
                                      bottomLeft: Radius.circular(20.0)),
                                ),
                                child: Center(
                                  child: Text(""),
                                )),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(),
                        child: Text('Nguyễn Chí Khang',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0)),
                      ),
                    ]),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 30.0),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Container(
              height: MediaQuery.of(context).size.height / 1.9,
              width: MediaQuery.of(context).size.width - 20,
              decoration: BoxDecoration(
                color: Colors.red.shade100,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0)),
              ),
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.only(top: 10, right: 0),
                  child: Text('Đạo cụ',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 70),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(),
                        child: Image(
                          image: AssetImage('assets/tim.png'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Text('1',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: Image(
                          image: AssetImage('assets/den.png'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Text('2',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: Image(
                          image: AssetImage('assets/tien.png'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 0),
                        child: Text('600',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 100),
                  child: Row(
                    children: [
                      Text('Thời gian chơi : ',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0)),
                      Text('22h30 ',
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0)),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Text('Hạng cá nhân',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0)),
                ),
                Image(
                  width: 200,
                  height: 200,
                  image: AssetImage('assets/rank.png'),
                ),
                Text('Bạc I ',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0)),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                        Colors.red.shade300,
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22.0),
                        ),
                      ),
                    ),
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LichSuDau()))
                    },
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text('Lịch sủ đấu')),
                  ),
                )
              ]),
            ),
          ),

          ////////nut dang xuat
          Padding(
            padding: EdgeInsets.only(top: 30, left: 20),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
                  Colors.red.shade300,
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22.0),
                  ),
                ),
              ),
              onPressed: () => {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()))
              },
              child: Padding(
                  padding: EdgeInsets.all(10), 
                  child: ElevatedButton(
                    onPressed: () { 
                      
                     },
                    child:Text('Đăng Xuất')) ,)
            ),
          )
        ],
      ),
    ));
  }
}
