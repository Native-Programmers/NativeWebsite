import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
    )
  );
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.antiAlias,
      children: [
          Container(
            child: Text("Hello Native Programmers"),
          ),
          Scaffold(
            floatingActionButton: SpeedDial(
                backgroundColor: Colors.blue[900],
                activeBackgroundColor: Colors.blue[200],
                overlayColor: Colors.grey,
                overlayOpacity: 0.1,
                animatedIcon: AnimatedIcons.menu_arrow,
                children: [
                  SpeedDialChild(
                    child: Icon(Icons.mail),
                    elevation: 5,
                  ),
                ],
            ),
          ),
      ],
    );
  }
}
