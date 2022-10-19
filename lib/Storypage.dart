import 'dart:async';

import 'package:flutter/material.dart';
import 'package:story/stories/story_2.dart';
import 'package:story/stories/story_3.dart';
import 'package:story/story_bars.dart';

import 'stories/story_1.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  int Currentstoryindex = 0;
  final List<Widget> myStories = [
    const MyStory1(),
    const MyStory2(),
    const MyStory3(),
  ];

  List<double> PercentWatched = [];
  @override
  void initState() {
    super.initState();

    for (int i = 0; i < myStories.length; i++) {
      PercentWatched.add(0);
    }

    _startwatching();
  }

  void _startwatching() {
    Timer.periodic(const Duration(milliseconds: 50), (timer) {
      setState(() {
        if (PercentWatched[Currentstoryindex] + 0.01 < 1) {
          PercentWatched[Currentstoryindex] += 0.01;
        } else {
          PercentWatched[Currentstoryindex] = 1;
          timer.cancel();

          if (Currentstoryindex < myStories.length - 1) {
            Currentstoryindex++;
            _startwatching();
          } else {
            Navigator.pop(context);
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Stack(
        children: [
          myStories[Currentstoryindex],
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Mystorybar(
              PercentWatched: PercentWatched,
            ),
          )
        ],
      ),
    );
  }
}
