import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_parking/moduls/SecondScreen/SecondScreen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  int activeIndex = 0 ;

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(

        body: SafeArea(
          child: Column(
            children: [
              CarouselSlider(
                items: [
                  Image.asset(
                    'images/assets/firstScreen/park11.jpg',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ) ,
                  Image.asset(
                    'images/assets/firstScreen/photo2.jpeg',
                    width: double.infinity,
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
              const SizedBox(height: 60,) ,
              const Text(
                'Hello My Friend' ,
                style: TextStyle(
                    color: Colors.black ,
                    fontFamily: 'roboto' ,
                    fontSize: 30 ,
                    fontWeight: FontWeight.bold
                ),
              ) ,
              const SizedBox(height: 30,) ,
              const Text(
                'In order to protect your car, you must log \nin with your phone number and car \nlicense',
                style: TextStyle(
                  fontSize: 19   ,
                  fontFamily: 'roboto' ,
                  wordSpacing: 1

                ) ,
              ) ,
              const Spacer(flex: 1,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        left: 25 ,
                        bottom: 70
                    ),
                    width: 100,
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
                            MaterialPageRoute(builder: (context)=>const SecondScreen())
                          ) ;
                        });
                      } ,
                      child: const Text(
                          'Skip' ,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'roboto',
                          )

                      ),
                    ),
                  ),
                ],
              ) ,





            ],
          ),
        ),
      ) ,
    );
  }
}
