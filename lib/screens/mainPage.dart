import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hovering/hovering.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  openwhatsapp() async{
    var whatsapp ="+923115671234";
    var whatsappURl_android = "whatsapp://send?phone="+whatsapp+"&text=hello";
    var whatappURL_ios ="https://wa.me/$whatsapp?text=${Uri.parse("hello")}";
    if(Platform.isIOS){
      // for iOS phone only
      if( await canLaunch(whatappURL_ios)){
        await launch(whatappURL_ios, forceSafariVC: false);
      }else{
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("whatsapp no installed")));

      }

    }else{
      if( await canLaunch(whatsappURl_android)){
        await launch(whatsappURl_android);
      }else{
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("whatsapp no installed")));

      }


    }

  }
  var search = TextEditingController();
  final _images = [
    'assets/back1.png',
    'assets/back2.png',
    'assets/back3.png',
    'assets/back4.png',
    'assets/back5.png',
    'assets/SEO.jpg',
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
            actions: [
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width/5,
                    height: 40,
                    child: TextFormField(
                      controller: search,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: search.clear,
                          icon: const Icon(Icons.clear),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusColor: Colors.white,
                        labelStyle: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                        label: const Text("Search Services",
                        ),
                        fillColor: Colors.white,
                        filled:true,
                      ),

                    ),

                  ),
                  const VerticalDivider(
                    width: (kIsWeb ? 25 : 5),
                    color: Colors.transparent,
                  ),
                ],
              )
            ],
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
                          width: (kIsWeb ? 15 : 2),

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
                          width: (kIsWeb ? 15 : 2),
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
                          width: (kIsWeb ? 15 : 2),
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
                  SliverAppBar(
                    expandedHeight: MediaQuery.of(context).size.height-50,
                    floating: false,
                    pinned: true,
                    centerTitle: true,
                    backgroundColor: Colors.lightBlueAccent,
                    title: const Text("NATIVE PROGRAMMERS",
                        style: TextStyle(
                          fontSize:28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Serif",
                          letterSpacing: 2.0,
                        )
                    ),
                    flexibleSpace: FlexibleSpaceBar(
                        background: Swiper(
                          itemCount: _images.length,
                          itemBuilder: (BuildContext context, int index) => SizedBox(
                            width: double.infinity,
                            height: double.infinity,
                            child: (
                                Image.asset(
                                  _images[index],
                                  fit: BoxFit.fill,
                                )
                            ),
                          ),
                          autoplay: true,
                        )),
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
                  child: const Icon(Icons.mail),
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
                  onTap: (){
                    openwhatsapp();
                  }
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
