import 'package:flutter/material.dart';

Widget goalStat(int expandedTime, int homeGoal, int awayGoal) {
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          // ignore: unnecessary_brace_in_string_interps
          "${expandedTime}",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        Expanded(
          child: Center(
            // ignore: unnecessary_brace_in_string_interps
            child: Text(
              // ignore: unnecessary_brace_in_string_interps
              "${homeGoal} - ${awayGoal}",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36,
              ),
            ),
          ),
        )
      ],
    ),
  );
}
