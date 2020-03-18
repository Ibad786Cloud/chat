import 'package:flutter/material.dart';
import 'package:chat/homescreen.dart';

void main (){
  runApp(MyApp(
  ),);
  
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter demo',
      theme: ThemeData(
        primaryColor: Colors.deepPurple[600],
        accentColor: Colors.amber[50],

      ),
      home: Homescreen(),
    );
  }
}
