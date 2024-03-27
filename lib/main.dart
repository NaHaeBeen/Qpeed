import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qing/myPage.dart';
import 'package:qing/myPage_setting.dart';

void main() {
  runApp(const QpeedApp());
}

class QpeedApp extends StatelessWidget {
  const QpeedApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Colors.white,
          secondary: Colors.black,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Color(0x55FFFFFF),
            showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Color(0xFFFF0097),
          unselectedItemColor: Colors.grey,
          elevation: 0,
        ),
        useMaterial3: true,
      ),
      home: const QpeedHome(),
    );
  }
}

class QpeedHome extends StatefulWidget {
  const QpeedHome({Key? key}) : super(key: key);

  @override
  State<QpeedHome> createState() => _QpeedHomeState();
}

class _QpeedHomeState extends State<QpeedHome> {
  late int index;

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const MyPage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (newIndex) => setState(() => index = newIndex),
        items: const[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,size: 30,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,size: 30,
              ),
              label: 'like'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.more_horiz,size: 30,
              ),
              label: 'more'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person, size: 30,
              ),
              label: 'person'),
        ],
      ),
    );
  }
}
