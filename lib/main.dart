import 'package:flutter/material.dart';
import 'package:login/yash/firstpage.dart';
import 'package:login/yash/login.dart';
import 'package:login/yash/secondpage.dart';
import 'package:login/yash/thirdpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      //home:  Loginpage(),
      //home: SecondPage(),
      //home: ThirdPage(),
      home: FirstPage(),
    );
  }
}

