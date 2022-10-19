import 'package:flutter/material.dart';

class MyStory1 extends StatelessWidget {
  const MyStory1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text(
          'Hello world',
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
