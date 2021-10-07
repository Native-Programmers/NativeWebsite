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
    var whatsappURl ="https://wa.me/$whatsapp?text=${Uri.parse("How are you ?")}";

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
    'assets/back3.jpg',
    'assets/back4.jpg',
    'assets/back5.jpg',
    'assets/back6.jpg',
  ];
  static List<services> list = [
    services("Web Application Development","alpha"),
    services("Android Application Development","alpha"),
    services("iOS Application Development","alpha"),
    services("Windows Application Development","alpha"),
    services("Digital Marketing","alpha"),
    services("Search Engine Optimization","alpha"),
    services("Graphuc Designing","alpha"),
    services("IT Business Consultancy","alpha"),
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
            title: Container(
              child: Text("Hello"),
            )
          ),
          body: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height:(MediaQuery.of(context).size.height<MediaQuery.of(context).size.width ?
                    MediaQuery.of(context).size.height-50 : MediaQuery.of(context).size.height/2.5),
                    width: double.infinity,
                    child: Swiper(
                          duration: 700,
                          itemCount: _images.length,
                          itemBuilder: (BuildContext context, int index) => SizedBox(
                            width: double.infinity,
                            height: double.infinity,
                            child: (Image.asset(
                              _images[index],
                              fit: BoxFit.fill,
                            )),
                          ),
                          autoplay: true,
                          pagination: new SwiperPagination(),
                          layout: SwiperLayout.STACK,
                          control: new SwiperControl(),
                          itemWidth: MediaQuery.of(context).size.width,

                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                      itemBuilder: (BuildContext context, int index) => SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: (Image.asset(
                          _images[index],
                          fit: BoxFit.fill,
                        )),
                      ),
                      itemCount: 4,
                    )
                  )
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
                    ScaffoldMessenger.of(context)
                        .showSnackBar(const SnackBar(content: Text("Phone number copied to clipboard")));
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
