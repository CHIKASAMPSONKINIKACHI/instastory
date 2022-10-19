import 'package:flutter/material.dart';

import 'Storypage.dart';

class StoryCircle extends StatelessWidget {
  final Function;

  const StoryCircle({this.Function});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const StoryPage(),
          ),
        );
      }),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 50,
          width: 50,
          // color: Colors.blue,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
