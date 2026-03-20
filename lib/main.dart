import 'package:flutter/material.dart';

void main() => runApp(const BRImoApp());

class BRImoApp extends StatelessWidget {
  const BRImoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text("Home"),
        ),
      ),
    );
  }
}