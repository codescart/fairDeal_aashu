import 'dart:convert';
import 'package:audioplayers/audioplayers.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fairdeal/loginwigit/login_page.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:fairdeal/HomeDirectry/Appbar.dart';
import 'package:fairdeal/HomeDirectry/Roulette_timex/Roulette_timex_home.dart';
import 'package:fairdeal/HomeDirectry/blue36home/blue36home_page.dart';
import 'package:fairdeal/HomeDirectry/green36/green36_home.dart';
import 'package:fairdeal/constant/Apihandler.dart';
import 'package:fairdeal/constant/colorconstant.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Desktop view/Desktop_HomeDirectry/green36_desktop/green36_home.dart';



class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {


  final  _player = AudioCache();

  Sound(String sound)async{
    await _player.play(sound);
  }
@override
  void initState() {
    // TODO: implement initState
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    SystemUiOverlay.bottom,
  ]);
  }

  @override
  Widget build(BuildContext context) {
    final heights=MediaQuery.of(context).size.height;
    final widths = MediaQuery.of(context).size.height*2;
    return Scaffold(
      appBar: customappbar(),
      body: WillPopScope(
        onWillPop: () async {
          final shouldPop = await showDialog<bool>(
            context: context,
            builder: (context) {
              return AlertDialog(
                backgroundColor: Colors.transparent,
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                shadowColor: Colors.black,
                content: Container(
                  height: widths/2,
                  width:widths/1.5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/closegame.jpeg')
                      )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        // width:  widths/4.5,
                      ),
                      SizedBox(
                        // width:  widths/4.5,
                      ),
                      SizedBox(
                        // width:  widths/4.5,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap:(){
                              _logout();
                            },
                            child: Container(

                              height: widths/10,
                              width:widths/7,

                            ),
                          ),
                          SizedBox(
                            width:widths/6,
                          ),

                          InkWell(
                            onTap:(){
                              Navigator.pop(context,false);
                            },
                            child: Container(

                              height: widths/10,
                              width:widths/7,

                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        // width:  widths/4.5,
                      ),
                    ],
                  ),
                ),
              );
            },
          );
          return shouldPop!;
        },
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/homebg.png',),fit: BoxFit.fill,
              )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 100.h,bottom: 110.h),

                    child: Text('VIP CLUB', style: TextStyle(color: Color(
                        0xffeec138), fontWeight: FontWeight.w900, fontSize: 25),),
                  ),
                  Container(
                    // color: Colors.white,
                    width: MediaQuery.of(context).size.width*0.80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        InkWell(
                          onTap: (){

                            // if(MediaQuery.of(context).size.width>=900){
                            //   print("desktop view is running");
                            //   print("h "+ MediaQuery.of(context).size.height.toString());
                            //   print("w "+MediaQuery.of(context).size.toString());
                            //   setState(() {
                            //     Navigator.push(context,
                            //         MaterialPageRoute(builder: (contex)=>green36home_desktop()));
                            //   });
                            // }
                            Navigator.push(context,
                                MaterialPageRoute(builder: (contex)=>green36home()));
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width*0.25,
                            height: MediaQuery.of(context).size.height*0.35,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/homebg2.png',),
                              ),),),),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (contex)=>Roulette_timex_home()));
                           // Sound('audio/WelcometoRealDeal.mp3');
                           // Sound('audio/Welcometo36Timer.mp3');
                          },
                          child:Container(
                            width: MediaQuery.of(context).size.width*0.25,
                            height: MediaQuery.of(context).size.height*0.35,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/homebg3.png',),
                              ),),),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding:  EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width*0.2,
                  child: CarouselSlider(
                      options: CarouselOptions(
                        height: MediaQuery.of(context).size.height*0.2,
                        aspectRatio: 16/9,
                        viewportFraction: 0.8,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.3,
                        scrollDirection: Axis.horizontal,
                      ),
                    items: [1,2,3,4,5].map((i) {
                      return Builder(
                         builder: (BuildContext context) {
                          return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/realjettt.png',),fit: BoxFit.fill,
                                )
                            ),

                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }



  _logout() async {
    final prefs = await SharedPreferences.getInstance();
    final userid=prefs.getString("userId");
    final response = await http.get(
      Uri.parse('https://realdeal.games/admin/index.php/Mobile_app/logout?userid=$userid'),

    );

    var data = jsonDecode(response.body);
    if (data["error"] == "200") {
      // Sound('audio/WelcomeToRealdeal_goodluck.mp3');
      Fluttertoast.showToast(
          msg: data["msg"] ,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          textColor: Colors.white,
          backgroundColor: Colors.green,
          fontSize: 16.0);

       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>login_page()));


    } else {
      Fluttertoast.showToast(
          msg: data["msg"] ,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          textColor: Colors.white,
          backgroundColor: Colors.red,
          fontSize: 16.0);

      print("Error");
    }
  }


}
