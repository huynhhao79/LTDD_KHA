import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RankingScreen extends StatefulWidget {
  const RankingScreen({Key? key}) : super(key: key);
  // final email;
  @override
  _RankingScreenState createState() => _RankingScreenState();
}

class _RankingScreenState extends State<RankingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getdata();
  }

  String name = '';
  String email = '';
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
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //    backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 40),
            Text(
              'Điểm cao nhất',
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection('users')
                      .orderBy('score', descending: true)
                      // .where('email', isEqualTo: email)
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData)
                      return Center(
                        child: CircularProgressIndicator(),
                      );

                    final users = snapshot.data!.docs;

                    return ListView.builder(
                      itemBuilder: (context, index) {
                        return Card(
                          color: Colors.deepPurple[200],
                          child: ListTile(
                            // leading: CircleAvatar(
                            //     // backgroundImage:
                            //     //     NetworkImage(users[index]['photoUrl']),
                            //     ),
                            title: Text(
                              users[index]['name'].toString(),
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),

                            trailing: Text(users[index]['score'].toString()),
                          ),
                        );
                      },
                      itemCount: users.length,
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
