import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class ThridScreen extends StatefulWidget {
  const ThridScreen({Key? key}) : super(key: key);

  @override
  State<ThridScreen> createState() => _ThridScreenState();
}

class _ThridScreenState extends State<ThridScreen> {
  var dailCode = '+20' ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            height:MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                    'images/assets/ThridScreen/lic.jpeg'
                ) ,
                const SizedBox(height: 20,) ,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 75,
                      height: 3,
                      color: Colors.black,

                    ),
                    const SizedBox(width: 10,),
                    const Text(
                      'or' ,
                      style: TextStyle(
                        fontWeight: FontWeight.bold ,
                        fontFamily: 'roboto' ,
                        fontSize: 22
                      ),
                    ) ,
                    const SizedBox(width: 10,),
                    Container(
                      width: 75,
                      height: 3,
                      color: Colors.black,

                    ),

                  ],
                ) ,
                const SizedBox(height: 30,) ,
                FloatingActionButton(
                  onPressed: (){} ,
                  elevation: 10,
                  backgroundColor: Colors.white,
                  child: const Icon(
                    Icons.upload ,
                    color: Colors.black,
                  ),
                ) ,
                const SizedBox(height: 30,) ,
                Container(
                  margin: const EdgeInsets.only(left: 40 ,right: 20 ),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle ,
                    borderRadius: BorderRadius.circular(10) ,
                    color: Colors.grey[100],
                    boxShadow:  const [
                      BoxShadow(
                         color:Color(0xffa6a6a6),
                        blurRadius: 2

                        ) ,
                    ] ,
                  ),
                  child: Row(
                    children: [
                    CountryListPick(
                      theme: CountryTheme(
                        isShowFlag: true  ,
                        //showEnglishName: true , //
                       isShowTitle: false ,
                        isShowCode: true ,
                        isDownIcon: true ,
                        initialSelection: dailCode ,

                      ),
                      onChanged: (code)
                      {
                        if(code!.dialCode !=null)
                          {
                            dailCode = code.dialCode.toString()!;
                          }else
                          {
                            print( 'error');
                          }
                      },
                    ),
                      Container(
                        width: 200,
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                               TextField(
                                decoration: const InputDecoration(hintText: "Enter your number"),
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.digitsOnly
                                ], // Only numbers can be entered
                              ),
                            ],
                          )),

                    ],
                  ),
                ) ,
                const SizedBox(height: 80,) ,
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
                    onPressed:(){} ,
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
          ),
        ),
      ),
    );
  }
}
