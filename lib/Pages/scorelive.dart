import 'package:flutter/material.dart';
import 'package:livescore/Pages/api_manager.dart';
import 'package:livescore/Pages/body.dart';

class ScoreLivePage extends StatefulWidget {
  const ScoreLivePage({Key? key}) : super(key: key);

  @override
  _ScoreLivePageState createState() => _ScoreLivePageState();
}

class _ScoreLivePageState extends State<ScoreLivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        title: Text(
          "LIVE BOARD",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        elevation: 0,
      ),
      body: FutureBuilder(
        future: SoccerApi().getAllMatches(),
        builder: (context, snapahot) {
          if (snapahot.hasData) {
            var snapshot;
            return body(snapshot.data);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
