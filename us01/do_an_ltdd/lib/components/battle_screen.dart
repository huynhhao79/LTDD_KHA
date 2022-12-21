import 'package:flutter/material.dart';
import 'package:phan4_bai1/components/doikhang.dart';
import 'package:phan4_bai1/components/tiencuoc.dart';

class Battle_Sceen extends StatefulWidget {
  const Battle_Sceen({super.key});

  @override
  State<Battle_Sceen> createState() => _Battle_SceenState();
}

class _Battle_SceenState extends State<Battle_Sceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Container(
            // decoration: const BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage('assets/game.png'),
            //     fit: BoxFit.cover,
            //   ),
            // ),

            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            height: 20,
          ),
          Row(children: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.white,
            ),
          ]),
          const Text(
            "Đối kháng",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: 50,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: 50,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: 50,
              ),
              Icon(
                Icons.star,
                size: 50,
              ),
            ],
          ),
          Image(
            image: AssetImage('assets/rank.png'),
            width: 200,
            height: 200,
          ),
          const Text(
            "Bạc I",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 70, 0, 0),
            width: 300,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.red.shade100,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                // Text(
                //   "Chọn chế độ chơi:",
                //   style: TextStyle(
                //     fontSize: 20,
                //     fontStyle: FontStyle.normal,
                //   ),
                // ),
                // Container(
                //     padding: const EdgeInsets.fromLTRB(50, 40, 50, 25),
                //     child: ElevatedButton(
                //       child: Row(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           const Text(
                //             'Chơi đơn',
                //             style: TextStyle(fontSize: 20, color: Colors.black),
                //           ),
                //         ],
                //       ),
                //       onPressed: () {},
                //       style: ButtonStyle(
                //           backgroundColor:
                //               MaterialStateProperty.all<Color>(Colors.red)),
                //     )),
                Container(
                  padding: const EdgeInsets.fromLTRB(50, 100, 50, 50),
                  child:
                      // OutlinedButton(
                      //   onPressed: () => _dialogBuilder(context),
                      //   child: const Text('Tìm Đối Thủ '),
                      // ),
                      ElevatedButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Tìm đối thủ',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Tiencuoc()));
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ])));
  }
}

Future<void> _dialogBuilder(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: const Text('Đang tìm đối thủ'),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          // TextButton(
          //   style: TextButton.styleFrom(
          //     textStyle: Theme.of(context).textTheme.labelLarge,
          //   ),
          //   child: const Text('Enable'),
          //   onPressed: () {
          //     Navigator.of(context).pop();
          //   },
          // ),
        ],
      );
    },
  );
}
