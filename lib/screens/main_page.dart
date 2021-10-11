import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:nativeprogarmmers/classes/details.dart';
import 'package:nativeprogarmmers/classes/team.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _serviceKey = GlobalKey();
  final _topKey = GlobalKey();
  final _aboutKey = GlobalKey();

  Future scrolltoItem () async{
    final context = _serviceKey.currentContext!;
    await Scrollable.ensureVisible(
        context,
        alignment:0.5,
        duration: Duration(seconds:2),
    );
  }
  Future scrolltoTop () async{
    final context = _topKey.currentContext!;
    await Scrollable.ensureVisible(
      context,
      alignment:0.5,
      duration: Duration(seconds:2),
    );
  }
  Future scrolltoAbout () async{
    final context = _aboutKey.currentContext!;
    await Scrollable.ensureVisible(
      context,
      alignment:0.5,
      duration: Duration(seconds:2),
    );
  }
  Future scrolltoContact () async{
    final context = _topKey.currentContext!;
    await Scrollable.ensureVisible(
      context,
      alignment:0.5,
      duration: Duration(seconds:2),
    );
  }


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
    services("Android Application Development", "alpha",'assets/cards/android.png'),
    services("iOS Application Development", "alpha",'assets/cards/ios1.jpg'),
    services("Windows Application Development", "alpha",'assets/cards/web1.jpg'),
    services("Digital Marketing", "alpha",'assets/cards/web2.jpg'),
    services(" ", "alpha",'assets/cards/seo1.png'),
    services("Graphic Designing", "alpha",'assets/cards/graphics.jpg'),
    services(" ", "alpha",'assets/cards/service.jpg'),
  ];
  static List<Team> team = [
    Team("Mian Abdul Rehman", "Chief Executive Officer", "assets/team_images/CEO.jpeg"),
    Team("M.Nouman Faiz", "Human Resource Management", "assets/team_images/HR.jpeg"),
    Team("Usama Iqbal", "Graphic Designer", "assets/team_images/GD.jpeg"),
    Team("Umar Nasir", "SEO Expert", "assets/team_images/SEO.jpeg"),
    Team("Uzair Inshallah", "Lead Developer", "assets/team_images/LD.png"),
    Team("Danyal Ahmed", "Digital Marketing Expert", "assets/team_images/DGE.jpeg"),
  ];
  final _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      children: [
        Scaffold(
          key: _key,
          appBar: AppBar(
              backgroundColor: const Color(0xFF2F2750),
              elevation: 0,
              actions: [
                SizedBox(
                  height:25,
                  width: 85,
                  child: Image.asset('assets/logo.png'),
                ),
                const VerticalDivider(
                  width: 25,
                ),
              ],
              title: SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {scrolltoTop();},
                      child: SizedBox(
                        width: 50,
                        child: Row(
                          children: [
                            FittedBox(
                              fit:BoxFit.fitWidth,
                              child: Row(
                                children: [
                                  (MediaQuery.of(context).size.width>MediaQuery.of(context).size.height?
                                  Text("Home",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight:FontWeight.bold,
                                    ),
                                  ):Icon(FontAwesomeIcons.home)),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: () {scrolltoItem();},
                      child: FittedBox(
                        fit:BoxFit.fitWidth,
                        child: Row(
                          children: [
                            (MediaQuery.of(context).size.width>MediaQuery.of(context).size.height?
                            const Text("Services",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight:FontWeight.bold,
                              ),
                            ):const Icon(FontAwesomeIcons.idBadge)),

                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: FittedBox(
                        fit:BoxFit.fitWidth,
                        child: Row(
                          children: [
                            (MediaQuery.of(context).size.width>MediaQuery.of(context).size.height?
                            const Text("Contact Us",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight:FontWeight.bold,
                              ),
                            ):const Icon(FontAwesomeIcons.addressBook)),

                          ],
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: ()=>scrolltoAbout(),
                      child: FittedBox(
                        fit:BoxFit.fitWidth,
                        child: Row(
                          children: [
                            (MediaQuery.of(context).size.width>MediaQuery.of(context).size.height?
                            const Text("About Us",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight:FontWeight.bold,
                              ),
                            ):
                            const Icon(FontAwesomeIcons.infoCircle)),
                          ],
                        ),
                      ),
                    ),
                    VerticalDivider(
                      width:(MediaQuery.of(context).size.width>MediaQuery.of(context).size.height?20:2),
                      color:Colors.transparent,
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
                    key: _topKey,
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
                    padding: EdgeInsets.symmetric(vertical: (MediaQuery.of(context).size.width>MediaQuery.of(context).size.height && kIsWeb?100:25)),
                    child: Column(
                      children: const [
                        Center(
                          child: Text(
                            "\"Great Tech, Great Business\"",
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
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
                  const Divider(
                    height: 25,
                    color: Colors.transparent,
                  ),
                  const Center(
                    child: Text(
                      "Services",
                      style: TextStyle(
                        letterSpacing: 2.0,
                        fontFamily: "Ubuntu",
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                  ),
                  Divider(
                    height: 25,
                    color: Colors.transparent,
                  ),
                  Container(
                    key: _serviceKey,
                    child: GridView.count(
                      crossAxisCount: (MediaQuery.of(context).size.width>MediaQuery.of(context).size.height && kIsWeb
                          ?4 : 2),
                      childAspectRatio: (4 / 3),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      children: list.map((value) {
                        return Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(value.image),
                              fit: BoxFit.cover,
                              scale: 0.5,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          height:
                          MediaQuery.of(context).size.height / 3.5,
                          width:
                          MediaQuery.of(context).size.width / 3.25,
                          padding: EdgeInsets.fromLTRB(2.5,20,2.5,0),
                          child: Column(
                            children: [
                              Center(
                                child: FittedBox(
                                  fit:BoxFit.fitWidth,
                                  child: Text(
                                    value.name,
                                    style: const TextStyle(
                                      letterSpacing: 2.0,
                                      fontFamily: "Ubuntu",
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color:Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Divider(
                    height: 25,
                    color:Colors.transparent,
                  ),
                  const Center(
                    child: Text(
                      "About Us",
                      style: TextStyle(
                        letterSpacing: 2.0,
                        fontFamily: "Ubuntu",
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                  ),
                  Container(
                    color:Colors.transparent,
                    key: _aboutKey,
                    height: (MediaQuery.of(context).size.width>MediaQuery.of(context).size.height && kIsWeb?
                    250:130),
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(12.5,25,12.5,25),
                    child: Center(
                      child: ListView.builder(
                        itemCount: team.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            elevation: 2.5,
                            shadowColor: const Color(0xFF6C6C6C),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(
                                  5,
                                  (MediaQuery.of(context).size.width>MediaQuery.of(context).size.height && kIsWeb?
                                  15:5),
                                  5,
                                  0
                              ),
                              decoration: BoxDecoration(
                                color:Colors.cyanAccent[400],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              width:MediaQuery.of(context).size.width/6,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: (MediaQuery.of(context).size.width>MediaQuery.of(context).size.height && kIsWeb?
                                    120:50),
                                    height: (MediaQuery.of(context).size.width>MediaQuery.of(context).size.height && kIsWeb?
                                    120:50),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(team[index].picture
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: const Text(""),
                                  ),
                                  const Divider(
                                    height:25,
                                    color:Colors.transparent
                                  ),
                                  FittedBox(
                                    fit: BoxFit.fitWidth,
                                    child: Text(team[index].name,
                                    style: const TextStyle(
                                      fontSize:24,
                                      fontWeight:FontWeight.bold,
                                      fontFamily:'Ubuntu'
                                      ),
                                    ),
                                  ),
                                  const Divider(
                                      height:5,
                                      color:Colors.transparent
                                  ),
                                  FittedBox(
                                    fit: BoxFit.fitWidth,
                                    child: Text(team[index].designation,
                                      style: const TextStyle(
                                          fontSize:12,
                                          fontWeight:FontWeight.bold,
                                          fontFamily:'Ubuntu'
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },

                      ),
                    ),
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
