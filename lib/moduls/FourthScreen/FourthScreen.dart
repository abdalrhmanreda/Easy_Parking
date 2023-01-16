import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  var boardController =PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [],
      ),
    );
  }
}
