import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_parking/moduls/ThridScreen/ThridScreen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Column(
        children: [
          CarouselSlider(
            items: [
              Image.asset(
                'images/assets/firstScreen/park11.jpg',
                width: double.infinity,
                height: MediaQuery.of(context).size.height/2,
                fit: BoxFit.fitHeight,
              ) ,
              Image.asset(
                'images/assets/firstScreen/photo2.jpeg',
                width: double.infinity,
                height: MediaQuery.of(context).size.height/2,

                fit: BoxFit.cover,
              ) ,
            ],
            options: CarouselOptions(
              height: 300 ,
              initialPage: 0 ,
              pauseAutoPlayInFiniteScroll: true ,
              autoPlay: true ,
              reverse: false ,
              autoPlayInterval: const Duration(seconds:2) ,
              autoPlayAnimationDuration:const  Duration(seconds:1) ,
              autoPlayCurve: Curves.fastOutSlowIn ,
              scrollDirection: Axis.horizontal ,
              viewportFraction: 1 ,



            ),
          ) ,
          const SizedBox(height: 90,) ,
          const Text(
            'If you do not find a place to park with \n'
                'Easy Park, you will leave your car easily\n '
                'and safely without wasting time',
            style: TextStyle(
              fontSize: 20   ,
              fontFamily: 'Kaint' ,
              fontWeight: FontWeight.w400


            ) ,
            maxLines: 3,
          ) ,
          const Spacer(flex: 1,) ,
          Container(
            margin: const EdgeInsets.only(bottom: 50),
            width: 330,
            decoration: BoxDecoration(
              color: const Color(0xff0057ff) ,
              borderRadius: BorderRadius.circular(10) ,
              boxShadow: const[
                BoxShadow(
                  color:  Color(0xff0059fe) ,
                  offset: Offset(0, 4) ,
                  blurRadius: 4,

                ) ,
              ] ,
            ),
            child: MaterialButton(
              onPressed: (){
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>const ThridScreen())
                  ) ;
                });
              } ,
              child: const Text(
                  'continue' ,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Kanit',
                  )

              ),
            ),
          ) ,






        ],
      ),
    );
  }
}
