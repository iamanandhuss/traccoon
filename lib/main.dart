import 'package:flutter/material.dart';
import 'pages/authentication/intro.dart';
void main() {
  runApp(const Traccoon());
}

class Traccoon extends StatelessWidget {
  const Traccoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Intro(),
      
    );
  }
}
