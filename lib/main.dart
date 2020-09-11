import 'package:e_commerce/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-commerce Series',
      theme: ThemeData(
        primaryColor: Color(0xff009688),
        accentColor: Color(0xff4CAF50),
      ),
      home: HomePage(),
    );
  }
}
