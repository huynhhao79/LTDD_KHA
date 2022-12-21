import 'package:flutter/material.dart';
import 'package:phan4_bai1/chudechoi/ranking_screen.dart';
import 'package:phan4_bai1/components/bangxephang.dart';
import 'package:phan4_bai1/components/menu.dart';

import 'package:phan4_bai1/components/shopeee.dart';

import 'package:phan4_bai1/components/trangcanhan/trangcanhan.dart';
import 'scerrns/setting.dart';
import 'components/login.dart';
import 'components/sign_up.dart';
import 'components/setting_options.dart';
import 'components/battle_screen.dart';
import 'components/choose_mode.dart';

class homeapp extends StatelessWidget {
  const homeapp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Đồ án ',
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 5,
        child: Scaffold(
          // appBar: AppBar(
          //   title: Text(""),
          //   actions: [
          //     IconButton(
          //       onPressed: () {
          //         Navigator.push(context,
          //             MaterialPageRoute(builder: (context) => SettingScreen()));
          //       },
          //       icon: Icon(Icons.settings),
          //       color: Colors.white,
          //     ),
          //   ],
          // ),
          //  drawer: const Menu(),
          bottomNavigationBar: Container(
            color: Color.fromARGB(255, 92, 92, 92),
            child: TabBar(
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsets.all(4.0),
              splashBorderRadius: BorderRadius.circular(40),
              indicatorColor: Colors.blueGrey,
              tabs: const <Widget>[
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.person_pin),
                ),
                Tab(
                  icon: Icon(Icons.radar_outlined),
                ),
                Tab(
                  icon: Icon(Icons.shopping_cart),
                ),
                Tab(
                  icon: Icon(Icons.settings),
                ),
              ],
            ),
          ),
          body: TabBarView(children: <Widget>[
            Container(
              child: Choose_Mode(),
            ),
            Container(
              child: trangcanhan(),
            ),
            Container(
              child: RankingScreen(),
            ),
            Container(
              child: shoppee(),
            ),
            Container(
              child: SettingScreen(),
            ),
          ]),
        ));
  }
}
