import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_parking/moduls/FourthScreen/FourthScreen.dart';
import 'package:flutter/material.dart';

import 'moduls/FirstScreen/FirstScreen.dart';
import 'moduls/SecondScreen/SecondScreen.dart';
import 'moduls/ThridScreen/ThridScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
     debugShowCheckedModeBanner: false,
      home: FourthScreen(),
    );
  }
}


