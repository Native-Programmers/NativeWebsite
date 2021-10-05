import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hovering/hovering.dart';


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
  var search = TextEditingController();
  final _images = [
    'assets/back1.png',
    'assets/back2.png',
    'assets/back3.png',
    'assets/back4.png',
    'assets/back5.png',
  ];
  final _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.antiAlias,
      children: [

          Scaffold(
            key: _key,
            appBar: AppBar(
              backgroundColor: const Color(0xFF2F2750),
              elevation: 0,
              title: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    HoverWidget(
                      hoverChild: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          FaIcon(FontAwesomeIcons.phone,
                            size: 14,
                            color: Colors.deepOrange,
                          ),
                          VerticalDivider(
                            width:5,
                          ),
                          Text("Phone Number",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                          ),
                          VerticalDivider(
                            width:15,
                          )
                        ],
                      ),
                      onHover: (event) {

                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
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
                    ),
                    HoverWidget(
                      hoverChild: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          FaIcon(FontAwesomeIcons.whatsapp,
                            size: 14,
                            color: Colors.deepOrange,
                          ),
                          VerticalDivider(
                            width:5,
                          ),
                          Text("Whatsapp Number",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                          VerticalDivider(
                            width:15,
                          )
                        ],
                      ),
                      onHover: (event) {

                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          FaIcon(FontAwesomeIcons.whatsapp,
                            size: 14,
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
                    ),
                    HoverWidget(
                      hoverChild: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          FaIcon(FontAwesomeIcons.mailBulk,
                            size: 14,
                            color: Colors.deepOrange,
                          ),
                          VerticalDivider(
                            width:5,
                          ),
                          Text("Email Address",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                          VerticalDivider(
                            width:15,
                          )
                        ],
                      ),
                      onHover: (event) {

                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          FaIcon(FontAwesomeIcons.mailBulk,
                            size: 14,
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
                    ),
                  ],
                ),
              ),
          ),
            body: Scaffold(
              backgroundColor: Colors.transparent,
              body: CustomScrollView(
                slivers: [
                    // SliverAppBar(
                    //   title: const Text("Native Programmers"),
                    //   floating: true,
                    //   expandedHeight: 50,
                    //   actions: [
                    //     Row(
                    //         children: [
                    //           SizedBox(
                    //             width: MediaQuery.of(context).size.width/5,
                    //             child: TextFormField(
                    //               controller: search,
                    //               decoration: InputDecoration(
                    //                 border: OutlineInputBorder(
                    //                   borderRadius: BorderRadius.circular(10.0),
                    //                 ),
                    //                 focusColor: Colors.white,
                    //                 fillColor: Colors.white,
                    //                 filled:true,
                    //
                    //               ),
                    //
                    //             ),
                    //
                    //           ),
                    //           VerticalDivider(
                    //             width: 25,
                    //             color: Colors.transparent,
                    //           ),
                    //         ]
                    //     )
                    //   ],
                    // ),
                  SliverAppBar(
                    expandedHeight: 350.0,
                    floating: false,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                        centerTitle: true,
                        title: const Text("Collapsing Toolbar",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            )),
                        background: Swiper(
                          itemCount: _images.length,
                          itemBuilder: (BuildContext context, int index) => Image.asset(
                            _images[index],
                            fit: BoxFit.cover,
                          ),
                          autoplay: true,
                        )),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                            (context, index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 75,
                            color: Colors.black12,
                          ),
                        ),
                        childCount: 10),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                          (context, index) => ListTile(title: Text('Item #$index')),
                      childCount: 1000,
                    ),
                  ),
                ]
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
                      child: const FaIcon(FontAwesomeIcons.phone),
                      label: "Telephone Number",
                      elevation: 5,
                    ),
                    SpeedDialChild(
                      child: const FaIcon(FontAwesomeIcons.whatsapp),
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
