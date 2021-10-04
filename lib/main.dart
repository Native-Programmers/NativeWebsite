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

          Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xFF2F2750),
              elevation: 0,
              title: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(FontAwesomeIcons.phone,
                          size: 14,
                          color: Colors.orange,
                        ),
                        VerticalDivider(
                          width:5,
                        ),
                        Text("Phone Number",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                        ),
                        VerticalDivider(
                          width:15,
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(FontAwesomeIcons.whatsapp,
                          size: 16,
                          color: Colors.orange,

                        ),
                        VerticalDivider(
                          width:5,
                        ),
                        Text("Whatsapp Number",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        VerticalDivider(
                          width:15,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.mail,
                        size: 16,
                        color: Colors.orange,
                        ),
                        VerticalDivider(
                          width:5,
                        ),
                        Text("Email Address",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        VerticalDivider(
                          width:15,
                        )
                      ],
                    ),
                  ],
                ),
              ),
          ),
            body: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                title: Text("Native Programmers"),

              ),
              floatingActionButton: SpeedDial(
                  backgroundColor: Colors.blue[900],
                  activeBackgroundColor: Colors.blue[200],
                  overlayColor: Colors.grey,
                  overlayOpacity: 0.1,
                  animatedIcon: AnimatedIcons.menu_arrow,
                  spaceBetweenChildren: 5,
                  spacing: 10,
                  children: [
                    SpeedDialChild(
                      child: Icon(Icons.mail),
                      label: "Email Address",
                      elevation: 5,
                    ),
                    SpeedDialChild(
                      child: FaIcon(FontAwesomeIcons.phone),
                      label: "Telephone Number",
                      elevation: 5,
                    ),
                    SpeedDialChild(
                      child: FaIcon(FontAwesomeIcons.whatsapp),
                      label: "Whatsapp Number",
                      elevation: 5,
                    ),
                  ],
              ),
            ),
          ),
      ],
    );
  }
}
