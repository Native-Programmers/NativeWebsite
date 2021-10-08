import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nativeprogarmmers/classes/details.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  openwhatsapp() async {
    var whatsapp = "923115671234";
    var whatsappURl =
        "https://wa.me/$whatsapp?text=${Uri.parse("How are you ?")}";

    if (await canLaunch(whatsappURl)) {
      await launch(whatsappURl, forceSafariVC: false);
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("whatsapp no installed")));
    }
  }

  _sendMail() async {
    const uri =
        "mailto:nativeprogrammers@gmail.com?subject=Greetings&body=Hello%20I'm%20interested%20in%20your%20product.";
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }

  var search = TextEditingController();
  final _images = [
    'assets/back1.jpg',
    'assets/back2.jpg',
    'assets/back3.png',
    'assets/back4.jpg',
    'assets/back5.jpg',
    'assets/back6.jpg',
  ];
  static List<services> list = [
    services("Web Application Development", "alpha",'assets/cards/web.jpg'),
    services("Android Application Development", "alpha",'assets/cards/android.jpg'),
    services("iOS Application Development", "alpha",'assets/cards/ios1.jpg'),
    services("Windows Application Development", "alpha",'assets/cards/web1.jpg'),
    services("Digital Marketing", "alpha",'assets/cards/web2.jpg'),
    services("Search Engine Optimization", "alpha",'assets/cards/seo.png'),
    services("Graphic Designing", "alpha",'assets/cards/graphics.jpg'),
    services("IT Business Consultancy", "alpha",'assets/cards/business.jpg'),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        "Home",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight:FontWeight.bold,
                        ),
                      ),
                    ),
                    VerticalDivider(
                      width:20,
                      color:Colors.transparent,
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text("Services",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight:FontWeight.bold,
                        ),
                      ),
                    ),
                    VerticalDivider(
                      width:20,
                      color:Colors.transparent,
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text("About Us",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight:FontWeight.bold,
                        ),
                      ),
                    ),

                    VerticalDivider(
                      width:20,
                      color:Colors.transparent,
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text("Contact Us",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight:FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          body: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: (MediaQuery.of(context).size.height <
                            MediaQuery.of(context).size.width
                        ? MediaQuery.of(context).size.height - 50
                        : MediaQuery.of(context).size.height / 2.5),
                    width: double.infinity,
                    child: Swiper(
                      duration: 700,
                      itemCount: _images.length,
                      itemBuilder: (BuildContext context, int index) =>
                          SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: (Image.asset(
                          _images[index],
                          fit: BoxFit.fill,
                        )),
                      ),
                      autoplay: true,
                      pagination: SwiperPagination(),
                      layout: SwiperLayout.STACK,
                      control: SwiperControl(),
                      itemWidth: MediaQuery.of(context).size.width,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    color: const Color(0xFF2F2750),
                    padding: EdgeInsets.symmetric(vertical: 100),
                    child: Column(
                      children: const [
                        Text(
                          "\"Great Tech, Great Business\"",
                          style: TextStyle(
                            fontFamily: "Ubuntu",
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Divider(
                          height: 30,
                          color: Colors.transparent,
                        ),
                        Text("Native Programmers",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color:Colors.white,
                            ))
                      ],
                    ),
                  ),
                  Divider(
                    height: 25,
                    color: Colors.transparent,
                  ),
                  Text(
                    "Services",
                    style: TextStyle(
                      letterSpacing: 2.0,
                      fontFamily: "Ubuntu",
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                  Divider(
                    height: 25,
                    color: Colors.transparent,
                  ),
                  GridView.count(
                    crossAxisCount: 3,
                    childAspectRatio: (2 / 5),
                    controller: new ScrollController(keepScrollOffset: false),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: list.map((value) {
                      return Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(value.image),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        height:
                        MediaQuery.of(context).size.height / 3.5,
                        width:
                        MediaQuery.of(context).size.width / 3.25,
                        padding: EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Text(
                              value.name,
                              style: TextStyle(
                                letterSpacing: 2.0,
                                fontFamily: "Ubuntu",
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color:Colors.white,
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            floatingActionButton: SpeedDial(
              backgroundColor: Colors.blue[900],
              activeBackgroundColor: Colors.blue[200],
              overlayColor: Colors.grey,
              overlayOpacity: 0.1,
              animatedIcon: AnimatedIcons.menu_close,
              spaceBetweenChildren: 5,
              spacing: 10,
              children: [
                SpeedDialChild(
                  child: const Icon(Icons.mail),
                  label: "Email Address",
                  elevation: 5,
                  onTap: () {
                    _sendMail();
                  },
                ),
                SpeedDialChild(
                  child: const FaIcon(FontAwesomeIcons.phone),
                  label: "Telephone Number",
                  elevation: 5,
                  onTap: () {
                    Clipboard.setData(ClipboardData(text: "+923115671234"));
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Phone number copied to clipboard")));
                  },
                ),
                SpeedDialChild(
                    child: const FaIcon(FontAwesomeIcons.whatsapp),
                    label: "Whatsapp Number",
                    elevation: 5,
                    onTap: () {
                      openwhatsapp();
                    }),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
