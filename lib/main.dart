import 'package:flutter/material.dart';
//import 'package:oneapp/na.dart';

import 'package:oneapp/home.dart';

import 'package:oneapp/audio.dart';
import 'package:oneapp/video.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => MyHome(),
      "/audio": (context) => MyApp(),
      //"/db": (context) => MyDB(),
      //"/nav": (context) => nav(),
      "/video": (context) => Video(),
    },
    debugShowCheckedModeBanner: false,
  ));
}
