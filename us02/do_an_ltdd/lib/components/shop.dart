import 'package:flutter/material.dart';

class shop extends StatefulWidget {
  const shop({super.key});

  @override
  State<shop> createState() => _shopState();
}

class _shopState extends State<shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7A9BEE),
      body: Column(
        children: <Widget>[
          // Padding(
          //   padding: EdgeInsets.only(top: 0.0, left: 10.0),
          //   child: Row(
          //     children: <Widget>[
          //       IconButton(
          //         onPressed: () {
          //           Navigator.of(context).pop();
          //         },
          //         icon: Icon(Icons.arrow_back_ios),
          //         color: Colors.white,
          //       ),
          //       Padding(
          //         padding: EdgeInsets.only(top: 0.0, left: 300.0),
          //         child: Container(
          //             child: Row(
          //           mainAxisAlignment: MainAxisAlignment.end,
          //           children: <Widget>[
          //             IconButton(
          //               onPressed: () {
          //                 Navigator.of(context).pop();
          //               },
          //               icon: Icon(Icons.menu),
          //               color: Colors.white,
          //             ),
          //           ],
          //         )),
          //       ),
          //     ],
          //   ),
          // ),
          Padding(
              padding: EdgeInsets.only(top: 15.0, left: 10.0),
              child: Row(
                children: [],
              )),
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.only(left: 170.0),
            child: Row(
              children: <Widget>[
                Text('Shop',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
                SizedBox(width: 10.0),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: EdgeInsets.only(right: 240),
            child: Text('Đạo cụ miễn phí',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0)),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 5,
            width: MediaQuery.of(context).size.width - 20,
            decoration: BoxDecoration(
              color: Colors.red.shade100,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 10.0, top: 0.0),
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 0.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height - 300.0,
                      child: ListView(children: [
                        Padding(
                          padding: EdgeInsets.only(left: 0.0, top: 0.0),
                          child: Row(children: [
                            Padding(
                              padding: EdgeInsets.only(left: 0.0, top: 0.0),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Padding(
                                  padding: EdgeInsets.only(top: 0.0, left: 0.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              7,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(40.0),
                                                topRight: Radius.circular(40.0),
                                                bottomRight:
                                                    Radius.circular(40.0),
                                                bottomLeft:
                                                    Radius.circular(40.0)),
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 0, left: 5),
                                                child: Container(
                                                  child: Image(
                                                    image: AssetImage(
                                                        'assets/tim.png'),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 25, left: 0),
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 0, left: 30),
                              child: Text('lấy miễn phí ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.0, left: 50.0),
                              child: Row(children: [
                                Container(
                                    child: Row(
                                  children: <Widget>[
                                    Container(
                                      padding:
                                          EdgeInsets.fromLTRB(00, 0, 0, 00),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 20.0),
                                        child: ElevatedButton(
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll<Color>(
                                              Colors.red.shade300,
                                            ),
                                            shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(22.0),
                                              ),
                                            ),
                                          ),
                                          onPressed: () => {},
                                          child: Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Image(
                                              image:
                                                  AssetImage('assets/tv.png'),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ))
                              ]),
                            ),
                          ]),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.0, top: 0.0),
                          child: Row(children: [
                            Padding(
                              padding: EdgeInsets.only(left: 0.0, top: 0.0),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Padding(
                                  padding: EdgeInsets.only(top: 0.0, left: 0.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              7,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(40.0),
                                                topRight: Radius.circular(40.0),
                                                bottomRight:
                                                    Radius.circular(40.0),
                                                bottomLeft:
                                                    Radius.circular(40.0)),
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 0, left: 5),
                                                child: Container(
                                                  child: Image(
                                                    image: AssetImage(
                                                        'assets/den.png'),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 25, left: 0),
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 0, left: 30),
                              child: Text('lấy miễn phí ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 0.0, left: 50.0),
                              child: Row(children: [
                                Container(
                                    child: Row(
                                  children: <Widget>[
                                    Container(
                                      padding:
                                          EdgeInsets.fromLTRB(00, 0, 0, 00),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 20.0),
                                        child: ElevatedButton(
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll<Color>(
                                              Colors.red.shade300,
                                            ),
                                            shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(22.0),
                                              ),
                                            ),
                                          ),
                                          onPressed: () => {},
                                          child: Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Image(
                                              image:
                                                  AssetImage('assets/tv.png'),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ))
                              ]),
                            ),
                          ]),
                        ),
                      ]),
                    )),
              ],
            ),
          ),
          SizedBox(height: 5.0),
          // dao cu co phí ////////////////////////////////////////////////////////////////
          Padding(
            padding: EdgeInsets.only(right: 240),
            child: Text('Đạo cụ trả phí',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0)),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2.5,
            width: MediaQuery.of(context).size.width - 20,
            decoration: BoxDecoration(
              color: Colors.red.shade100,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 2.0, top: 0.0),
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 0.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height - 300.0,
                      child: ListView(children: [
                        Padding(
                          padding: EdgeInsets.only(left: 0.0, top: 0.0),
                          child: Row(children: [
                            Padding(
                              padding: EdgeInsets.only(left: 0.0, top: 10.0),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Padding(
                                  padding: EdgeInsets.only(top: 0.0, left: 0.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              7,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(40.0),
                                                topRight: Radius.circular(40.0),
                                                bottomRight:
                                                    Radius.circular(40.0),
                                                bottomLeft:
                                                    Radius.circular(40.0)),
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 0, left: 5),
                                                child: Container(
                                                  child: Image(
                                                    image: AssetImage(
                                                        'assets/den.png'),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 35, left: 0),
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 0, left: 5),
                              child: Text(
                                '+',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.0, top: 10.0),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Padding(
                                  padding: EdgeInsets.only(top: 0.0, left: 0.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              7,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(40.0),
                                                topRight: Radius.circular(40.0),
                                                bottomRight:
                                                    Radius.circular(40.0),
                                                bottomLeft:
                                                    Radius.circular(40.0)),
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 0, left: 5),
                                                child: Container(
                                                  child: Image(
                                                    image: AssetImage(
                                                        'assets/tim.png'),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 35, left: 0),
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 0, left: 10),
                              child: Text(
                                '=',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 0, left: 5),
                              child: Text(
                                '10',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 0, left: 0),
                              child: Image(
                                image: AssetImage('assets/tien.png'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.0, left: 5.0),
                              child: Row(children: [
                                Container(
                                    child: Row(
                                  children: <Widget>[
                                    Container(
                                      padding:
                                          EdgeInsets.fromLTRB(00, 0, 0, 00),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 20.0),
                                        child: ElevatedButton(
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll<Color>(
                                              Colors.red.shade300,
                                            ),
                                            shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(22.0),
                                              ),
                                            ),
                                          ),
                                          onPressed: () => {},
                                          child: Padding(
                                            padding: EdgeInsets.all(5),
                                            child: IconButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              icon: Icon(Icons.shopping_cart),
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ))
                              ]),
                            ),
                          ]),
                        ),
                        //////////////////////////////////////////////////////////////////////////////////////////////////////
                        Padding(
                          padding: EdgeInsets.only(left: 0.0, top: 0.0),
                          child: Row(children: [
                            Padding(
                              padding: EdgeInsets.only(left: 0.0, top: 10.0),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Padding(
                                  padding: EdgeInsets.only(top: 0.0, left: 0.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              7,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(40.0),
                                                topRight: Radius.circular(40.0),
                                                bottomRight:
                                                    Radius.circular(40.0),
                                                bottomLeft:
                                                    Radius.circular(40.0)),
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 0, left: 5),
                                                child: Container(
                                                  child: Image(
                                                    image: AssetImage(
                                                        'assets/den.png'),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 35, left: 0),
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 0, left: 5),
                              child: Text(
                                '+',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.0, top: 10.0),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Padding(
                                  padding: EdgeInsets.only(top: 0.0, left: 0.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              7,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(40.0),
                                                topRight: Radius.circular(40.0),
                                                bottomRight:
                                                    Radius.circular(40.0),
                                                bottomLeft:
                                                    Radius.circular(40.0)),
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 0, left: 5),
                                                child: Container(
                                                  child: Image(
                                                    image: AssetImage(
                                                        'assets/tim.png'),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 35, left: 0),
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 0, left: 10),
                              child: Text(
                                '=',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 0, left: 5),
                              child: Text(
                                '10',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 0, left: 0),
                              child: Image(
                                image: AssetImage('assets/tien.png'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.0, left: 5.0),
                              child: Row(children: [
                                Container(
                                    child: Row(
                                  children: <Widget>[
                                    Container(
                                      padding:
                                          EdgeInsets.fromLTRB(00, 0, 0, 00),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 20.0),
                                        child: ElevatedButton(
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll<Color>(
                                              Colors.red.shade300,
                                            ),
                                            shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(22.0),
                                              ),
                                            ),
                                          ),
                                          onPressed: () => {},
                                          child: Padding(
                                            padding: EdgeInsets.all(5),
                                            child: IconButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              icon: Icon(Icons.shopping_cart),
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ))
                              ]),
                            ),
                          ]),
                        ),
                        //////////////////////////////////////////////////////////////
                        Padding(
                          padding: EdgeInsets.only(left: 0.0, top: 0.0),
                          child: Row(children: [
                            Padding(
                              padding: EdgeInsets.only(left: 0.0, top: 10.0),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Padding(
                                  padding: EdgeInsets.only(top: 0.0, left: 0.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              7,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(40.0),
                                                topRight: Radius.circular(40.0),
                                                bottomRight:
                                                    Radius.circular(40.0),
                                                bottomLeft:
                                                    Radius.circular(40.0)),
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 0, left: 5),
                                                child: Container(
                                                  child: Image(
                                                    image: AssetImage(
                                                        'assets/den.png'),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 35, left: 0),
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 0, left: 5),
                              child: Text(
                                '+',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.0, top: 10.0),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Padding(
                                  padding: EdgeInsets.only(top: 0.0, left: 0.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              7,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(40.0),
                                                topRight: Radius.circular(40.0),
                                                bottomRight:
                                                    Radius.circular(40.0),
                                                bottomLeft:
                                                    Radius.circular(40.0)),
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 0, left: 5),
                                                child: Container(
                                                  child: Image(
                                                    image: AssetImage(
                                                        'assets/tim.png'),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 35, left: 0),
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 0, left: 10),
                              child: Text(
                                '=',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 0, left: 5),
                              child: Text(
                                '10',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 0, left: 0),
                              child: Image(
                                image: AssetImage('assets/tien.png'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.0, left: 5.0),
                              child: Row(children: [
                                Container(
                                    child: Row(
                                  children: <Widget>[
                                    Container(
                                      padding:
                                          EdgeInsets.fromLTRB(00, 0, 0, 00),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 20.0),
                                        child: ElevatedButton(
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll<Color>(
                                              Colors.red.shade300,
                                            ),
                                            shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(22.0),
                                              ),
                                            ),
                                          ),
                                          onPressed: () => {},
                                          child: Padding(
                                            padding: EdgeInsets.all(5),
                                            child: IconButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              icon: Icon(Icons.shopping_cart),
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ))
                              ]),
                            ),
                          ]),
                        ),
                        ///////////////////////////////////////

                        Padding(
                          padding: EdgeInsets.only(left: 0.0, top: 0.0),
                          child: Row(children: [
                            Padding(
                              padding: EdgeInsets.only(left: 0.0, top: 10.0),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Padding(
                                  padding: EdgeInsets.only(top: 0.0, left: 0.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              7,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(40.0),
                                                topRight: Radius.circular(40.0),
                                                bottomRight:
                                                    Radius.circular(40.0),
                                                bottomLeft:
                                                    Radius.circular(40.0)),
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 0, left: 5),
                                                child: Container(
                                                  child: Image(
                                                    image: AssetImage(
                                                        'assets/den.png'),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 35, left: 0),
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 0, left: 5),
                              child: Text(
                                '+',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.0, top: 10.0),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Padding(
                                  padding: EdgeInsets.only(top: 0.0, left: 0.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              7,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(40.0),
                                                topRight: Radius.circular(40.0),
                                                bottomRight:
                                                    Radius.circular(40.0),
                                                bottomLeft:
                                                    Radius.circular(40.0)),
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 0, left: 5),
                                                child: Container(
                                                  child: Image(
                                                    image: AssetImage(
                                                        'assets/tim.png'),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 35, left: 0),
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 0, left: 10),
                              child: Text(
                                '=',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 0, left: 5),
                              child: Text(
                                '10',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 0, left: 0),
                              child: Image(
                                image: AssetImage('assets/tien.png'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.0, left: 5.0),
                              child: Row(children: [
                                Container(
                                    child: Row(
                                  children: <Widget>[
                                    Container(
                                      padding:
                                          EdgeInsets.fromLTRB(00, 0, 0, 00),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 20.0),
                                        child: ElevatedButton(
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll<Color>(
                                              Colors.red.shade300,
                                            ),
                                            shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(22.0),
                                              ),
                                            ),
                                          ),
                                          onPressed: () => {},
                                          child: Padding(
                                            padding: EdgeInsets.all(5),
                                            child: IconButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              icon: Icon(Icons.shopping_cart),
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ))
                              ]),
                            ),
                          ]),
                        ),

                        ////////////////////////////////////////////////////////////////////

                        Padding(
                          padding: EdgeInsets.only(left: 0.0, top: 0.0),
                          child: Row(children: [
                            Padding(
                              padding: EdgeInsets.only(left: 0.0, top: 10.0),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Padding(
                                  padding: EdgeInsets.only(top: 0.0, left: 0.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              7,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(40.0),
                                                topRight: Radius.circular(40.0),
                                                bottomRight:
                                                    Radius.circular(40.0),
                                                bottomLeft:
                                                    Radius.circular(40.0)),
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 0, left: 5),
                                                child: Container(
                                                  child: Image(
                                                    image: AssetImage(
                                                        'assets/den.png'),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 35, left: 0),
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 0, left: 5),
                              child: Text(
                                '+',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.0, top: 10.0),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Padding(
                                  padding: EdgeInsets.only(top: 0.0, left: 0.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              7,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(40.0),
                                                topRight: Radius.circular(40.0),
                                                bottomRight:
                                                    Radius.circular(40.0),
                                                bottomLeft:
                                                    Radius.circular(40.0)),
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 0, left: 5),
                                                child: Container(
                                                  child: Image(
                                                    image: AssetImage(
                                                        'assets/tim.png'),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 35, left: 0),
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 0, left: 10),
                              child: Text(
                                '=',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 0, left: 5),
                              child: Text(
                                '10',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 0, left: 0),
                              child: Image(
                                image: AssetImage('assets/tien.png'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.0, left: 5.0),
                              child: Row(children: [
                                Container(
                                    child: Row(
                                  children: <Widget>[
                                    Container(
                                      padding:
                                          EdgeInsets.fromLTRB(00, 0, 0, 00),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 20.0),
                                        child: ElevatedButton(
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll<Color>(
                                              Colors.red.shade300,
                                            ),
                                            shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(22.0),
                                              ),
                                            ),
                                          ),
                                          onPressed: () => {},
                                          child: Padding(
                                            padding: EdgeInsets.all(5),
                                            child: IconButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              icon: Icon(Icons.shopping_cart),
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ))
                              ]),
                            ),
                          ]),
                        ),
                        ////////////////////////////////
                      ]),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
