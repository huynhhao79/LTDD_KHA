import 'package:flutter/material.dart';
import 'package:phan4_bai1/components/menu.dart';
import 'package:phan4_bai1/components/shop.dart';
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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          drawer: const Menu(),
          bottomNavigationBar: Container(
            color: Colors.white,
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsets.all(4.0),
              splashBorderRadius: BorderRadius.circular(40),
              indicatorColor: Colors.blue,
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
              ],
            ),
          ),
          body: TabBarView(controller: _tabController, children: <Widget>[
            Container(
              child: Choose_Mode(),
            ),
            Container(
              child: Text('Trang cá nhân chưa code '),
            ),
            Container(
              child: Battle_Sceen(),
            ),
            Container(
              child: shop(),
            ),
          ]),
        ));
  }
}
