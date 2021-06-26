import 'package:flutter/material.dart';
import 'package:livescore/Pages/goalstat.dart';
import 'package:livescore/Pages/teamstat.dart';
import 'soccermodel.dart';

Widget body(List<SoccerMatch> allMatches) {
  return Column(
    children: [
      Expanded(
        flex: 2,
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                teamStat("Local Team", allMatches[0].home.logoUrl,
                    allMatches[0].home.name),
                goalStat(allMatches[0].fixture.status.elapsedTime,
                    allMatches[0].goal.home, allMatches[0].goal.away),
                teamStat("Visitor Team", allMatches[0].away.logoUrl,
                    allMatches[0].away.name),
              ],
            ),
          ),
        ),
      ),
      Expanded(
        flex: 5,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFF4373D9),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "MATCHES",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
