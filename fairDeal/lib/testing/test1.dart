
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'dart:math' as math;







class testtt extends StatefulWidget {


  @override
  _testttState createState() => _testttState();
}

class _testttState extends State<testtt> with SingleTickerProviderStateMixin{


  late final AnimationController _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 80000))..repeat();

  int selected =0;
  int selected2 =0;
  final items = <String>[
    '0',
    '32',
    '15',
    '19',
    '4',
    '21',
    '2',
    '25',
    '17',
    '34',
    '6',
    '27',
    '13',
    '36',
    '11',
    '30',
    '8',
    '23',
    '10',
    '5',
    '24',
    '16',
    '33',
    '1',
    '20',
    '14',
    '31',
    '9',
    '22',
    '18',
    '29',
    '7',
    '28',
    '12',
    '35',
    '3',
    '26',
  ];






  @override
  void initState() {


    super.initState();

  }


  var win;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(onPressed: (){   setState((){
            selected=10;
          });}, child: Text('reset')),
          ElevatedButton(onPressed: (){   setState((){
            selected=0;
          });}, child: Text('reset2')),
          InkWell(
            child: Container(
              width: MediaQuery.of(context).size.width*0.40,
              height: MediaQuery.of(context).size.width*0.40,

              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(

                      child: Center(
                        child: RotatedBox(
                          quarterTurns: 45,
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/orgtkorko.png"),
                                    fit: BoxFit.fill
                                )),
                            height: MediaQuery.of(context).size.width*0.50,
                            width:  MediaQuery.of(context).size.width*0.50,
                            // child: InkWell(
                            //
                            //   child: Padding(
                            //     // padding: EdgeInsets.all(10),
                            //     padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.060),
                            //     child: FortuneWheel(
                            //       animateFirst: true,
                            //       selected: selected2,
                            //       physics: CircularPanPhysics(
                            //         duration: Duration(seconds: 8),
                            //         curve: Curves.decelerate,
                            //       ),
                            //
                            //
                            //       indicators:  <FortuneIndicator>[
                            //         FortuneIndicator(
                            //
                            //             alignment: Alignment
                            //                 .topCenter, // <-- changing the position of the indicator
                            //             child: Text('')
                            //         ),
                            //       ],
                            //
                            //       items: [
                            //         for (var it in items)
                            //           FortuneItem(
                            //               style: FortuneItemStyle(
                            //                 color:
                            //                 // Colors.transparent,
                            //                 it=='0'? Colors.green :
                            //                 it=='32'? Color(0xff8b1700):
                            //                 it=='19'? Color(0xff8b1700):
                            //                 it=='21'? Color(0xff8b1700):
                            //                 it=='27'? Color(0xff8b1700):
                            //                 it=='25'? Color(0xff8b1700):
                            //                 it=='34'? Color(0xff8b1700):
                            //                 it=='36'? Color(0xff8b1700):
                            //                 it=='30'? Color(0xff8b1700):
                            //                 it=='23'? Color(0xff8b1700):
                            //                 it=='5'? Color(0xff8b1700):
                            //                 it=='16'? Color(0xff8b1700):
                            //                 it=='1'? Color(0xff8b1700):
                            //                 it=='14'? Color(0xff8b1700):
                            //                 it=='9'? Color(0xff8b1700):
                            //                 it=='18'? Color(0xff8b1700):
                            //                 it=='7'? Color(0xff8b1700):
                            //                 it=='12'? Color(0xff8b1700):
                            //                 it=='3'? Color(0xff8b1700):
                            //
                            //                 Colors.black, // <-- custom circle slice fill color
                            //                 borderColor: Colors.yellow, // <-- custom circle slice stroke color
                            //                 borderWidth: 0, // <-- custom circle slice stroke width
                            //               ),
                            //               child:
                            //               Padding(
                            //                 padding:  EdgeInsets.only(left:130),
                            //                 child: RotatedBox(
                            //                     quarterTurns: 1,
                            //                     child: Text(it, style: TextStyle(fontSize: MediaQuery.of(context).size.width/24, fontWeight:FontWeight.w900,
                            //                         color: Colors.white
                            //                     ),)),
                            //               )),
                            //       ],
                            //       onAnimationEnd: () {
                            //         print("Value : " + "$selected");
                            //       },
                            //     ),
                            //   ),
                            // ),
                          ),
                        ),
                      )),
                  Positioned(child:
                  Center(
                    child: Container(
                      height: MediaQuery.of(context).size.width*0.40,
                      child: FortuneWheel(
                        rotationCount:10,
                        animateFirst: false,
                        selected: selected,
                        duration:Duration(seconds: 9),

                        physics: CircularPanPhysics(
                          duration: Duration(seconds: 1),
                          curve: Curves.decelerate,
                        ),

                        styleStrategy: UniformStyleStrategy(
                          textAlign:TextAlign.end,
                          borderColor: Color(0xFFFFC501),
                          color: Color(0xFF640000),
                          borderWidth: 0.5,
                        ),
                        indicators:  <FortuneIndicator>[
                          FortuneIndicator(

                              alignment: Alignment
                                  .topCenter, // <-- changing the position of the indicator
                              child: Text('')
                          ),
                          // FortuneIndicator(
                          //
                          //     alignment: Alignment
                          //         .topCenter, // <-- changing the position of the indicator
                          //     child:Padding(
                          //       padding:  EdgeInsets.only(top:
                          //       MediaQuery.of(context).size.width*0.01
                          //       ),
                          //       child: Image.asset('assets/ball.png',color: Colors.white,
                          //         height:MediaQuery.of(context).size.width*0.04,width: MediaQuery.of(context).size.width*0.05,),
                          //     )
                          // ),
                        ],

                        items: [
                          for (var it in items)
                            FortuneItem(
                                style: FortuneItemStyle(
                                  color:
                                  Colors.transparent,
                                  // it=='0'? Colors.green :
                                  // it=='32'? Color(0xff8b1700):
                                  // it=='19'? Color(0xff8b1700):
                                  // it=='21'? Color(0xff8b1700):
                                  // it=='27'? Color(0xff8b1700):
                                  // it=='25'? Color(0xff8b1700):
                                  // it=='34'? Color(0xff8b1700):
                                  // it=='36'? Color(0xff8b1700):
                                  // it=='30'? Color(0xff8b1700):
                                  // it=='23'? Color(0xff8b1700):
                                  // it=='5'? Color(0xff8b1700):
                                  // it=='16'? Color(0xff8b1700):
                                  // it=='1'? Color(0xff8b1700):
                                  // it=='14'? Color(0xff8b1700):
                                  // it=='9'? Color(0xff8b1700):
                                  // it=='18'? Color(0xff8b1700):
                                  // it=='7'? Color(0xff8b1700):
                                  // it=='12'? Color(0xff8b1700):
                                  // it=='3'? Color(0xff8b1700):

                                  // Colors.black, // <-- custom circle slice fill color
                                  borderColor: Colors.transparent,
                                  //Color(0xffD4AF37), // <-- custom circle slice stroke color
                                  borderWidth: 1, // <-- custom circle slice stroke width
                                ),
                                child:
                                Padding(
                                  padding:  EdgeInsets.only(left: 30.0),
                                  child: RotatedBox(
                                      quarterTurns: 1,
                                      child: Text(it=='0'?'◍':'', style: TextStyle(fontSize: 15, fontWeight:FontWeight.w700,
                                          color: Colors.white
                                      ),)),
                                )
                            ),

                        ],
                        onAnimationEnd: () {
                          print("Value : " + "$selected2");
                        },
                      ),
                    ),
                  )),



                  // Center(
                  //   child: CircleAvatar(
                  //     radius: MediaQuery.of(context).size.width*0.23,
                  //     backgroundColor: Color(0xffe12c76),
                  //     child: Center(child: Image.asset('assets/fff.png'),
                  //
                  //     ),
                  //   ),
                  // ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


final number = <int>[
  0,
  1,
  2,
  3,
  4,
  5,
  6,
  7,
  8,
  9,
  10,
  11,
  12,
  13,
  14,
  15,
  16,
  17,
  18,
  19,
  20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36
];