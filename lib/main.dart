import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:nativeprogarmmers/screens/main_page.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    theme: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.lightBlue[800],
      ),
    initialRoute: '/index',
    routes: {
      '/index' : (context) => const Home(),
    },
    )
  );
}
