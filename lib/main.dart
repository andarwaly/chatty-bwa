import 'package:flutter/material.dart';
import 'pages/homepage.dart';
import 'pages/messages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: chatPanel(),
    );
  }
}
