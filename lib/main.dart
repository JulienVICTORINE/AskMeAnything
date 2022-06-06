import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask me anything'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: AskMeApp(),
      ),
    ),
  );
}

class AskMeApp extends StatefulWidget {
  const AskMeApp({Key? key}) : super(key: key);

  @override
  State<AskMeApp> createState() => _AskMeAppState();
}

class _AskMeAppState extends State<AskMeApp> {
  int ballNumber = 1;
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {});
          ballNumber = Random().nextInt(5) + 1;
        },
        child: Image.asset("images/ball$ballNumber.png"),
      ),
    );
  }
}



