import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MyProgressbar extends StatelessWidget {
  double PercentWatched = 0;

  MyProgressbar({required this.PercentWatched});

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      lineHeight: 15,
      percent: PercentWatched,
      progressColor: Colors.grey[100],
      backgroundColor: Colors.greenAccent[600],
    );
  }
}
