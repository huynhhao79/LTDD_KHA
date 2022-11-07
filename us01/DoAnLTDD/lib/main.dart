import 'package:flutter/material.dart';
import 'components/login.dart';
import 'components/sign_up.dart';
import 'components/setting_options.dart';
import 'components/battle_screen.dart';
import 'components/choose_mode.dart';
import 'components/store_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Thử thách bản thân',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Thử thách bản thân'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7A9BEE),
      body: SafeArea(
        child: Container(
        padding: const EdgeInsets.fromLTRB(0, 60, 0, 10),
        child: Choose_Mode()
        ),
      )
    );
  }
}
