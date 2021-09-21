import 'package:calculator_app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator_app',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}