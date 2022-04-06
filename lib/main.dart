import 'package:chatty_bwa/routes/routes.dart';
import 'package:flutter/material.dart';
import 'pages/homepage.dart';
import 'pages/messages.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      initialRoute: RoutesClasss.getHomeRoute(),
      getPages: RoutesClasss.routes,
    );
  }
}
