import 'package:flutter/material.dart';
import './progress.dart';

class Mystorybar extends StatelessWidget {
  List<double> PercentWatched = [];

  Mystorybar({required this.PercentWatched});
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.only(top: 10, left: 8, right: 8),
      child: Row(
        children: [
          Expanded(
            child: MyProgressbar(PercentWatched: PercentWatched[0]),
          ),
          Expanded(
            child: MyProgressbar(PercentWatched: PercentWatched[1]),
          ),
          Expanded(
            child: MyProgressbar(PercentWatched: PercentWatched[2]),
          ),
        ],
      ),
    );
  }
}
