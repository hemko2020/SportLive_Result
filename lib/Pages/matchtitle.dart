import 'package:flutter/material.dart';
import 'soccermodel.dart';

Widget matchTile(SoccerMatch match) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            match.home.name,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
        Image.network(
          match.home.logoUrl,
          width: 36,
        ),
        Expanded(
            child: Text("${match.goal.home} - ${match.goal.away}",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.white))),
        Image.network(
          match.away.logoUrl,
          width: 36,
        ),
        Expanded(
          child: Text(
            match.away.name,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ],
    ),
  );
}
