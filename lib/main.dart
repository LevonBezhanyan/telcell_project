import 'package:flutter/material.dart';
import 'package:first_app/pages/home_page.dart';

void main (){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wallet',
      theme: ThemeData(
        primarySwatch:Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}


