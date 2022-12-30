import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class shoppee extends StatefulWidget {
  const shoppee({super.key});

  @override
  State<shoppee> createState() => _shoppeeState();
}

class _shoppeeState extends State<shoppee> {
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
              // ElevatedButton(
              //     style: ButtonStyle(
              //       backgroundColor: MaterialStatePropertyAll<Color>(
              //         Colors.blueGrey,
              //       ),
              //     ),
              //     onPressed: () => {},
              //     child: Image.asset('assets/1.png')),
              // Container(
              //     width: 125.0,
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.end,
              //       children: <Widget>[
              //         IconButton(
              //           icon: Icon(Icons.menu),
              //           color: Colors.white,
              //           onPressed: () {},
              //         )
              //       ],
              //     ))
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 170.0, top: 30),
            child: Row(
              children: [
                Text('Shop',
                    style: TextStyle(
                        color: Colors.black,
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
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, top: 10.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                height: MediaQuery.of(context).size.height / 15,
                                width: MediaQuery.of(context).size.width / 7,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40.0),
                                      topRight: Radius.circular(40.0),
                                      bottomRight: Radius.circular(40.0),
                                      bottomLeft: Radius.circular(40.0)),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 0, left: 5),
                                      child: Container(
                                        child: Image(
                                          image: AssetImage('assets/tim.png'),
                                        ),
                                      ),
                                    )
                                  ],
                                ))
                          ]),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 35, left: 0),
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
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
                        ElevatedButton(
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
                          onPressed: () => {},
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Image(
                              image: AssetImage('assets/tv.png'),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, top: 10.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                height: MediaQuery.of(context).size.height / 15,
                                width: MediaQuery.of(context).size.width / 7,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40.0),
                                      topRight: Radius.circular(40.0),
                                      bottomRight: Radius.circular(40.0),
                                      bottomLeft: Radius.circular(40.0)),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 0, left: 5),
                                      child: Container(
                                        child: Image(
                                          image: AssetImage('assets/den.png'),
                                        ),
                                      ),
                                    )
                                  ],
                                ))
                          ]),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 35, left: 0),
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
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
                        ElevatedButton(
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
                          onPressed: () => {},
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Image(
                              image: AssetImage('assets/tv.png'),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // tra phiiiiiiiiiiiiiii//////////////////////////////////////////////////////////////////////////////////////
          SizedBox(height: 20.0),
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
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, top: 10.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                height: MediaQuery.of(context).size.height / 15,
                                width: MediaQuery.of(context).size.width / 7,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40.0),
                                      topRight: Radius.circular(40.0),
                                      bottomRight: Radius.circular(40.0),
                                      bottomLeft: Radius.circular(40.0)),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 0, left: 5),
                                      child: Container(
                                        child: Image(
                                          image: AssetImage('assets/tim.png'),
                                        ),
                                      ),
                                    )
                                  ],
                                ))
                          ]),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 35, left: 0),
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
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
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                height: MediaQuery.of(context).size.height / 15,
                                width: MediaQuery.of(context).size.width / 7,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40.0),
                                      topRight: Radius.circular(40.0),
                                      bottomRight: Radius.circular(40.0),
                                      bottomLeft: Radius.circular(40.0)),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 0, left: 5),
                                      child: Container(
                                        child: Image(
                                          image: AssetImage('assets/tim.png'),
                                        ),
                                      ),
                                    )
                                  ],
                                ))
                          ]),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 35, left: 0),
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 0, left: 5),
                      child: Text(
                        '=',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0),
                      child: Text(
                        '10',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(),
                      child: Image(
                        image: AssetImage('assets/tien.png'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0, left: 0.0),
                      child: Row(children: [
                        ElevatedButton(
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
                          onPressed: () => {},
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.shopping_cart),
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
                //////////////////////////////////////////////////////
                ///
                ///
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, top: 10.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                height: MediaQuery.of(context).size.height / 15,
                                width: MediaQuery.of(context).size.width / 7,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40.0),
                                      topRight: Radius.circular(40.0),
                                      bottomRight: Radius.circular(40.0),
                                      bottomLeft: Radius.circular(40.0)),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 0, left: 5),
                                      child: Container(
                                        child: Image(
                                          image: AssetImage('assets/tim.png'),
                                        ),
                                      ),
                                    )
                                  ],
                                ))
                          ]),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 35, left: 0),
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
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
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                height: MediaQuery.of(context).size.height / 15,
                                width: MediaQuery.of(context).size.width / 7,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40.0),
                                      topRight: Radius.circular(40.0),
                                      bottomRight: Radius.circular(40.0),
                                      bottomLeft: Radius.circular(40.0)),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 0, left: 5),
                                      child: Container(
                                        child: Image(
                                          image: AssetImage('assets/tim.png'),
                                        ),
                                      ),
                                    )
                                  ],
                                ))
                          ]),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 35, left: 0),
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 0, left: 5),
                      child: Text(
                        '=',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0),
                      child: Text(
                        '10',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(),
                      child: Image(
                        image: AssetImage('assets/tien.png'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0, left: 0.0),
                      child: Row(children: [
                        ElevatedButton(
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
                          onPressed: () => {},
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.shopping_cart),
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
                ///////////////////////////////////////////////////////////////////////
                ///
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, top: 10.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                height: MediaQuery.of(context).size.height / 15,
                                width: MediaQuery.of(context).size.width / 7,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40.0),
                                      topRight: Radius.circular(40.0),
                                      bottomRight: Radius.circular(40.0),
                                      bottomLeft: Radius.circular(40.0)),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 0, left: 5),
                                      child: Container(
                                        child: Image(
                                          image: AssetImage('assets/tim.png'),
                                        ),
                                      ),
                                    )
                                  ],
                                ))
                          ]),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 35, left: 0),
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
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
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                height: MediaQuery.of(context).size.height / 15,
                                width: MediaQuery.of(context).size.width / 7,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40.0),
                                      topRight: Radius.circular(40.0),
                                      bottomRight: Radius.circular(40.0),
                                      bottomLeft: Radius.circular(40.0)),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 0, left: 5),
                                      child: Container(
                                        child: Image(
                                          image: AssetImage('assets/tim.png'),
                                        ),
                                      ),
                                    )
                                  ],
                                ))
                          ]),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 35, left: 0),
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 0, left: 5),
                      child: Text(
                        '=',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0),
                      child: Text(
                        '10',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(),
                      child: Image(
                        image: AssetImage('assets/tien.png'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0, left: 0.0),
                      child: Row(children: [
                        ElevatedButton(
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
                          onPressed: () => {},
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.shopping_cart),
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
                /////////////////////////////////////////////////////////
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, top: 10.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                height: MediaQuery.of(context).size.height / 15,
                                width: MediaQuery.of(context).size.width / 7,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40.0),
                                      topRight: Radius.circular(40.0),
                                      bottomRight: Radius.circular(40.0),
                                      bottomLeft: Radius.circular(40.0)),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 0, left: 5),
                                      child: Container(
                                        child: Image(
                                          image: AssetImage('assets/tim.png'),
                                        ),
                                      ),
                                    )
                                  ],
                                ))
                          ]),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 35, left: 0),
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
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
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                height: MediaQuery.of(context).size.height / 15,
                                width: MediaQuery.of(context).size.width / 7,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40.0),
                                      topRight: Radius.circular(40.0),
                                      bottomRight: Radius.circular(40.0),
                                      bottomLeft: Radius.circular(40.0)),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 0, left: 5),
                                      child: Container(
                                        child: Image(
                                          image: AssetImage('assets/tim.png'),
                                        ),
                                      ),
                                    )
                                  ],
                                ))
                          ]),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 35, left: 0),
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 0, left: 5),
                      child: Text(
                        '=',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0),
                      child: Text(
                        '10',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(),
                      child: Image(
                        image: AssetImage('assets/tien.png'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0, left: 0.0),
                      child: Row(children: [
                        ElevatedButton(
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
                          onPressed: () => {},
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.shopping_cart),
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),

                //////////////////////////////////////////////////////////////////
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
