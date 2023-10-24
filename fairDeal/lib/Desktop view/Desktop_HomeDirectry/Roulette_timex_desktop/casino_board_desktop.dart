import 'dart:async';
import 'dart:convert';
import 'package:audioplayers/audioplayers.dart';
import 'package:fairdeal/HomeDirectry/green36/green36_home.dart';
import 'package:fairdeal/constant/Apihandler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:math' as math;

class RouletteLayout_desktop extends StatefulWidget {
  final double widths;
  final double heights;
  final String result;
  final String gnno;
  final bool chuga;
  final int time;
  final bool timerclose;

  RouletteLayout_desktop({Key? key, required this.widths, required this.heights, required this.result, required this.gnno, required this.chuga, required this.time, required this.timerclose}) : super(key: key);

  @override
  State<RouletteLayout_desktop> createState() => _RouletteLayout_desktopState();
}

class _RouletteLayout_desktopState extends State<RouletteLayout_desktop> {
  int selectedCard = -1;



  List<int> data= [34,35,36,31,32,33,28,29,30,25,26,27,22,23,24,19,20,21,16,17,18,13,14,15,10,11,12,7,8,9,4,5,6,1,2,3];


  final red = {1, 3, 5, 7, 9, 12, 14, 16, 18, 19, 21, 23, 25, 27, 30, 32, 34, 36};

  final AudioCache  _player = AudioCache(fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP),
  );
  Sound(String sound)async{
    await _player.play(sound);
  }
  var batam;
  var betimg;
  var	nn0n;
  var	n1n;
  var	n2n;
  var	n3n;
  var	n4n;
  var	n5n;
  var	n6n;
  var	n7n;
  var	n8n;
  var	n9n;
  var	n10n;
  var	n11n;
  var	n12n;
  var	n13n;
  var	n14n;
  var	n15n;
  var	n16n;
  var	n17n;
  var	n18n;
  var	n19n;
  var	n20n;
  var	n21n;
  var	n22n;
  var	n23n;
  var	n24n;
  var	n25n;
  var	n26n;
  var	n27n;
  var	n28n;
  var	n29n;
  var	n30n;
  var	n31n;
  var	n32n;
  var	n33n;
  var	n34n;
  var	n35n;
  var	n36n;
  var	n37n;
  var	n38n;
  var	n39n;
  var	n40n;
  var	n41n;
  var	n42n;
  var	n43n;
  var	n44n;
  var	n45n;
  var	n46n;
  var	n47n;
  var	n48n;
  var	n49n;
  var	n50n;
  var	n51n;
  var	n52n;
  var	n53n;
  var	n54n;
  var	n55n;
  var	n56n;
  var	n57n;
  var	n58n;
  var	n59n;
  var	n60n;
  var	n61n;
  var	n62n;
  var	n63n;
  var	n64n;
  var	n65n;
  var	n66n;
  var	n67n;
  var	n68n;
  var	n69n;
  var	n70n;
  var	n71n;
  var	n72n;
  var	n73n;
  var	n74n;
  var	n75n;
  var	n76n;
  var	n77n;
  var	n78n;
  var	n79n;
  var	n80n;
  var	n81n;
  var	n82n;
  var	n83n;
  var	n84n;
  var	n85n;
  var	n86n;
  var	n87n;
  var	n88n;
  var	n89n;
  var	n90n;
  var	n91n;
  var	n92n;
  var	n93n;
  var	n94n;
  var	n95n;
  var	n96n;
  var	n97n;
  var	n98n;
  var	n99n;
  var	n100n;
  var	n101n;
  var	n102n;
  var	n103n;
  var	n104n;
  var	n105n;
  var	n106n;
  var	n107n;
  var	n108n;
  var	n109n;
  var	n110n;
  var	n111n;
  var	n112n;
  var	n113n;
  var	n114n;
  var	n115n;
  var	n116n;
  var	n117n;
  var	n118n;
  var	n119n;
  var	n120n;
  var	n121n;
  var	n122n;
  var	n123n;
  var	n124n;
  var	n125n;
  var	n126n;
  var	n127n;
  var	n128n;
  var	n129n;
  var	n130n;
  var	n131n;
  var	n132n;
  var	n133n;
  var	n134n;
  var	n135n;
  var	n136n;
  var	n137n;
  var	n138n;
  var	n139n;
  var	n140n;
  var	n141n;
  var	n142n;
  var	n143n;



  bool chiptime=false;


  @override
  void initState() {
    _dateTime = DateTime.now().toUtc();
    _clockModel = ClockModel();
    _clockModel.is24HourFormat =  true;

    _dateTime = DateTime.now().toUtc();
    _clockModel.hour = _dateTime.hour;
    _clockModel.minute = _dateTime.minute;
    _clockModel.second = _dateTime.second;

    _timer = Timer.periodic(Duration(milliseconds: 200), (timer) {
      // yui();
      _dateTime = DateTime.now().toUtc();
      _clockModel.hour = _dateTime.hour;
      _clockModel.minute = _dateTime.minute;
      _clockModel.second = _dateTime.second;

      // pji();

      if(_clockModel.second >=36){
        setState((){
          chiptime=false;
        });
      }else{
        setState((){
          chiptime=true;
        });
        yui();

      }
      if(_clockModel.second>=54){
        setState(() {
          chug=true;
        });
      }else{
        setState(() {
          chug=false;
        });
      }
    });

    super.initState();
  }
  bool chug=false;
  late DateTime _dateTime;
  late ClockModel _clockModel;
  late Timer _timer;

  int v1=55;
  int v2=55;
  int v3=55;
  int v4=55;
  int v5=55;
  int v6=55;
  int v7=55;
  int v8=55;
  int v9=55;
  int v10=55;
  int v11=55;
  int v12=55;
  int v13=55;
  int v14=55;
  int v15=55;
  int v16=55;
  int v17=55;
  int v18=55;



  @override
  Widget build(BuildContext context) {
    // final heights=MediaQuery.of(context).size.height
    final heights = MediaQuery.of(context).size.height;
    final widths = MediaQuery.of(context).size.height * 2;
    return Container(
        child: Transform(
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.0005)
          ..rotateX(-45),
        child: Transform.rotate(
            angle: 11.82,
          // heights>=340.00 && heights<=359.00? -math.pi /9.35.h:
          // heights>=360.00 && heights<=375.00?-math.pi /7.85.h
          //     :heights<=400.00 && heights<=393.00?-math.pi /8.8.h
          //     :heights>=400.00 && heights<=480.00?-math.pi /8.7.h
          //     :heights>=475.00 && heights<=500.00?-math.pi /8.8.h
          //     :heights>=550.00 && heights<=700.00?-math.pi /8.8.h:-math.pi /8.8.h,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: widget.heights*0.60,
                        width: widget.widths*0.06,
                        decoration: BoxDecoration(

                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/2to1.png')
                            )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            InkWell(

                              onTap: chiptime==false?(){}
                                  : (){
                                betlog(bet:42,
                                    amount:batam,
                                    betimg:'2');
                                yui();
                                Sound('audio/coin.mp3');
                                fristtab();
                              },
                              child: Container(
                                height: widget.heights*0.19,
                                width: widget.widths*0.07,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.transparent,
                                      // color: Color(0xffffffff),
                                      width: 1,
                                    )
                                ),
                                child:   otherdata==null?Text(''):otherdata[42]['total']==null?Text(''):
                                Center(child: Container(
                                  height: widths / 30,
                                  width: widths / 30,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/chipnew.png')
                                      )
                                  ),
                                  child: Center(
                                    child: Text(otherdata[42]['total'].toString(),
                                      style: TextStyle(fontSize: widths/100,
                                          fontWeight: FontWeight.w900,color: Colors.black),
                                    ),
                                  ),
                                )),

                              ),
                            ),

                            InkWell(

                              onTap: chiptime==false?(){}
                                  : (){
                                betlog(bet:43,
                                    amount:batam,
                                    betimg:'2');
                                yui();
                                Sound('audio/coin.mp3');
                                secondtab();
                              },
                              child:Container(
                                height: widget.heights*0.19,
                                width: widget.widths*0.07,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.transparent,
                                      width: 1,
                                    )
                                ),
                                child:  otherdata==null?Text(''):otherdata[43]['total']==null?Text(''):
                                Center(child: Container(
                                  height: widths / 30,
                                  width: widths / 30,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/chipnew.png')
                                      )
                                  ),
                                  child: Center(
                                    child: Text(otherdata[43]['total'].toString(),
                                      style: TextStyle(fontSize: widths/100,
                                          fontWeight: FontWeight.w900,color: Colors.black),
                                    ),
                                  ),
                                )),
                                // Center(child: Text('2\nto\n1',
                                //   style: GoogleFonts.playfairDisplay(
                                //   textStyle:TextStyle(
                                //       fontSize: widths/100, fontWeight: FontWeight.w900,
                                //     color: Colors.transparent,
                                //   ),
                                // ),)),
                              ),
                            ),

                            InkWell(

                              onTap: chiptime==false?(){}
                                  :(){
                                betlog(bet:44,
                                    amount:batam,
                                    betimg:'2');
                                yui();   Sound('audio/coin.mp3');
                                thirdtab();
                              },
                              child:Container(
                                height: widget.heights*0.19,
                                width: widget.widths*0.07,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.transparent,
                                      width: 1,
                                    )
                                ),
                                child:  otherdata==null?Text(''):otherdata[44]['total']==null?Text(''):
                                Center(child: Container(
                                  height: widths / 30,
                                  width: widths / 30,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/chipnew.png')
                                      )
                                  ),
                                  child: Center(
                                    child: Text(otherdata[44]['total'].toString(),
                                      style: TextStyle(fontSize: widths/100,
                                          fontWeight: FontWeight.w900,color: Colors.black),
                                    ),
                                  ),
                                )),
                                // Center(child: Text('2\nto\n1',
                                //   style: GoogleFonts.playfairDisplay(
                                //   textStyle:TextStyle(
                                //       fontSize: widths/100, fontWeight: FontWeight.w900,
                                //     color: Colors.transparent,
                                //   ),
                                // ),)),
                              ),
                            ),

                          ],
                        ),
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                              height: widget.heights*0.60,
                              width: widget.widths*0.77,

                              // width: widget.widths*0.855,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage('assets/16.png')
                                  )
                              ),
                              child:
                              Stack(

                                clipBehavior: Clip.none,
                                children: [
                                  GridView.builder(
                                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3,
                                        childAspectRatio:1.33,
                                      ),
                                      scrollDirection: Axis.horizontal,
                                      itemCount: data.length,


                                      itemBuilder: (BuildContext context, int index) {

                                        return Container(
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,

                                          ),
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            children: [
                                              Container(
                                                  decoration: BoxDecoration(

                                                      border: Border.all(
                                                        color:v1==data[index]? Color(0xffde7b35):
                                                        v2==data[index]? Color(0xffde7b35):
                                                        v3==data[index]? Color(0xffde7b35):
                                                        v4==data[index]? Color(0xffde7b35):
                                                        v5==data[index]? Color(0xffde7b35):
                                                        v6==data[index]? Color(0xffde7b35):
                                                        v7==data[index]? Color(0xffde7b35):
                                                        v8==data[index]? Color(0xffde7b35):
                                                        v9==data[index]? Color(0xffde7b35):
                                                        v10==data[index]? Color(0xffde7b35):
                                                        v11==data[index]? Color(0xffde7b35):
                                                        v12==data[index]? Color(0xffde7b35):
                                                        v13==data[index]? Color(0xffde7b35):
                                                        v14==data[index]? Color(0xffde7b35):
                                                        v15==data[index]? Color(0xffde7b35):
                                                        v16==data[index]? Color(0xffde7b35):
                                                        v17==data[index]? Color(0xffde7b35):
                                                        v18==data[index]? Color(0xffde7b35):
                                                        Colors.transparent,

                                                        width: 1.5,
                                                      )
                                                  ),
                                                  child:    Stack(
                                                      clipBehavior: Clip.none,
                                                      children: [

                                                        Center(
                                                          child:
                                                          InkWell(


                                                            onTap: chiptime==false?(){}
                                                                :(){
                                                              yui();   Sound('audio/coin.mp3');
                                                              v1=data[index];

                                                              betlog(bet:data[index],
                                                                  amount:batam,
                                                                  betimg:'5');
                                                            },
                                                            child:

                                                            Container(
                                                                height: widget.heights*0.12,
                                                                width: widget.heights*0.12,
                                                                decoration: BoxDecoration(
                                                                  shape: BoxShape.circle,
                                                                  color: Colors.transparent,


                                                                ),
                                                                // margin: EdgeInsets.all(2),
                                                                child: otherdata==null?Text('')
                                                                //     :
                                                                // otherdata[index]['number']=='1'?Text('pj'):
                                                                // otherdata[index]['number']=='2'?Text('pj'):
                                                                // otherdata[index]['number']=='3'?Text('pj'):
                                                                // otherdata[index]['number']=='4'?Text('pj'):
                                                                // otherdata[index]['number']=='5'?Text('pj')


                                                                    :otherdata[index]['total']==null?Text(''):
                                                                Center(child: Container(
                                                                  decoration: BoxDecoration(
                                                                      image: DecorationImage(
                                                                          image: AssetImage('assets/chipnew.png')
                                                                      )
                                                                  ),
                                                                  child: Center(
                                                                    child: Text(otherdata[index]['total'].toString(),
                                                                      style: TextStyle(fontSize: 18.sp,
                                                                          fontWeight: FontWeight.w900,color: Colors.black),
                                                                    ),
                                                                  ),
                                                                ))
                                                              // snapshot.data![index].total==null?
                                                              // Text(data[index].toString(),
                                                              //   style: TextStyle(fontSize: widget.heights*0.07,
                                                              //       fontWeight: FontWeight.w900,color: Colors.transparent),
                                                              // ):
                                                              // Center(child: Container(
                                                              //
                                                              //   decoration: BoxDecoration(
                                                              //     image: DecorationImage(
                                                              //       image: AssetImage('assets/chipnew.png')
                                                              //     )
                                                              //   ),
                                                              //   child: Center(
                                                              //     child: Text('${snapshot.data![index].total}',
                                                              //       style: TextStyle(fontSize: widget.heights*0.03,
                                                              //           fontWeight: FontWeight.w900,color: Colors.black),
                                                              //     ),
                                                              //   ),
                                                              // )),
                                                            ),
                                                            // ],
                                                            // ),


                                                          ),
                                                        ),
                                                      ])


                                              ),
                                              Positioned(child: data[index].toString()==widget.result.toString() && chug==true?
                                              Center(child:
                                              Container(

                                                  child:  Transform(
                                                    transform: Matrix4.identity()
                                                      ..setEntry(3, 2, 0.0018)
                                                      ..rotateX(-18),
                                                    child: Container(
                                                      height: MediaQuery.of(context).size.height*0.20.h,
                                                      width: MediaQuery.of(context).size.width*0.035.w,
                                                      decoration: BoxDecoration(
                                                          image: DecorationImage(
                                                            image: AssetImage('assets/chugga.png'),
                                                          )
                                                      ),
                                                    ),
                                                  )
                                              )
                                              ):Container()),


                                            ],
                                          ),
                                        ) ;
                                      }),

                                  /// 4 digit
                                  ///5263
                                  Positioned(
                                      bottom: widget.heights * 0.12,
                                      right: widget.widths * 0.043,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:56,
                                                amount:batam,
                                                betimg:'2');
                                            yui();Sound('audio/coin.mp3');

                                          },
                                          child:otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ): otherdata[56]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ): Center(child: Container(
                                            height: 35,
                                            width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[56]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),
                                  ///4152
                                  Positioned(
                                      top: widget.heights * 0.155,
                                      right: widget.widths * 0.043,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:55,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 20,
                                            width: 20,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[55]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                            width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[55]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),
                                  ///8596
                                  Positioned(
                                      bottom: widget.heights * 0.15,
                                      right: widget.widths * 0.107,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:58,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[58]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                            width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[58]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),
                                  ///7485
                                  Positioned(
                                      top: widget.heights * 0.155,
                                      right: widget.widths * 0.108,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:57,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[57]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                            width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[57]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),
                                  ///111289
                                  Positioned(
                                      bottom: widget.heights * 0.15,
                                      right: widget.widths * 0.17,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:60,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[60]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                            width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[60]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),
                                  ///107118
                                  Positioned(
                                      top: widget.heights * 0.155,
                                      right: widget.widths * 0.175,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:59,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[59]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                            width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[59]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),
                                  ///14111512
                                  Positioned(
                                      bottom: widget.heights * 0.155,
                                      right: widget.widths * 0.240,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:62,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[62]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                            width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[62]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  ///10111314
                                  Positioned(
                                      top: widget.heights * 0.155,
                                      right: widget.widths * 0.238,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:61,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[61]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                            width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[61]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),
                                  ///18151714
                                  Positioned(
                                      bottom: widget.heights * 0.15,
                                      right: widget.widths * 0.302,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:64,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[64]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                            width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[64]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),
                                  ///13141617
                                  Positioned(
                                      top: widget.heights * 0.155,
                                      right: widget.widths * 0.300,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:63,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[63]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                            width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[63]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),
                                  ///20 21 18 17
                                  Positioned(
                                      bottom: widget.heights * 0.15,
                                      left: widget.widths * 0.365,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:66,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[66]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[66]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),
                                  ///19162017
                                  Positioned(
                                      top: widget.heights * 0.155,
                                      left: widget.widths * 0.365,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:65,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[65]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[65]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),
                                  ///23202421
                                  Positioned(
                                      bottom: widget.heights * 0.15,
                                      left: widget.widths * 0.303,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:68,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[68]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[68]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),
                                  ///22192320
                                  Positioned(
                                      top: widget.heights * 0.155,
                                      left: widget.widths * 0.30,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:67,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[67]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[67]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),
                                  ///23242627
                                  Positioned(
                                      bottom: widget.heights * 0.15,
                                      left: widget.widths * 0.238,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:70,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[70]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[70]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),
                                  ///25222623
                                  Positioned(
                                      top: widget.heights * 0.155,
                                      left: widget.widths * 0.240,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:69,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[69]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[69]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),
                                  ///26272930
                                  Positioned(
                                      bottom: widget.heights * 0.15,
                                      left: widget.widths * 0.172,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:72,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[72]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[72]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),
                                  ///25262829
                                  Positioned(
                                      top: widget.heights*0.17 ,
                                      left: widget.widths*0.18,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:71,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[71]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[71]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),
                                  ///29303233
                                  Positioned(
                                      bottom: widget.heights * 0.15,
                                      left: widget.widths * 0.108,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:74,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[74]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[74]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),
                                  ///28293132
                                  Positioned(
                                      top: widget.heights * 0.155,
                                      left: widget.widths * 0.110,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:73,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[73]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[73]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),
                                  ///32333536
                                  Positioned(
                                      bottom: widget.heights * 0.15,
                                      left: widget.widths * 0.042,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:54,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[54]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[54]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),
                                  ///31323534
                                  Positioned(
                                      top: widget.heights * 0.155,
                                      left: widget.widths * 0.045,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:53,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[53]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[53]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  ///------------------******-------------------*************--------------------****-----------------

                                  /// 3digit

                                  ///123
                                  Positioned(
                                      bottom: widget.heights*0.0,
                                      right: widget.widths*0.02,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:75,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[75]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[75]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),
                                  ///456
                                  Positioned(
                                      bottom: widget.heights * 0.0,
                                      right: widget.widths * 0.07,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:76,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[76]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[76]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),
                                  ///789
                                  Positioned(
                                      bottom: widget.heights * 0.0,
                                      right: widget.widths * 0.14,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:77,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[77]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[77]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  ///101112
                                  Positioned(
                                      bottom: widget.heights * 0.0,
                                      right: widget.widths * 0.20,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:78,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[78]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[78]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  ///131415
                                  Positioned(
                                      bottom: widget.heights * 0.0,
                                      right: widget.widths * 0.266,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:79,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[79]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[79]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),
                                  ///161718
                                  Positioned(
                                      bottom: widget.heights * 0.0,
                                      right: widget.widths * 0.325,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:80,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[80]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[80]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  ///192021
                                  Positioned(
                                      bottom: widget.heights * 0.0,
                                      left: widget.widths * 0.33,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:81,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[81]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[81]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  ///222324
                                  Positioned(
                                      bottom: widget.heights * 0.0,
                                      left: widget.widths * 0.268,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:82,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[82]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[82]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  ///252627
                                  Positioned(
                                      bottom: widget.heights * 0.0,
                                      left: widget.widths * 0.206,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:83,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[83]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[83]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  ///282930
                                  Positioned(
                                      bottom: widget.heights * 0.0,
                                      left: widget.widths * 0.135,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:84,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[84]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[84]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),
                                  ///313233
                                  Positioned(
                                      bottom: widget.heights * 0.0,
                                      left: widget.widths * 0.07,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:85,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[85]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[85]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),
                                  ///34 35 36
                                  Positioned(
                                      bottom: widget.heights * 0.0,
                                      left: widget.widths * 0.01,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:86,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[86]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[86]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),


                                  /// ///------------------******-------------------*************--------------------****-----------------

                                  ///2digit
                                  ///34 35
                                  Positioned(
                                      top: widget.heights * 0.155,
                                      left: widget.widths * 0.01,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:139,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[139]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[139]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  ///35 36
                                  Positioned(
                                      bottom: widget.heights * 0.155,
                                      left: widget.widths * 0.01,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:140,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[140]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[140]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  ///31 32
                                  Positioned(
                                      top: widget.heights * 0.155,
                                      left: widget.widths * 0.075,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:134,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[134]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[134]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  ///32 33
                                  Positioned(
                                      bottom: widget.heights * 0.15,
                                      left: widget.widths * 0.075,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:135,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[135]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[135]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  ///28 29
                                  Positioned(
                                      top: widget.heights * 0.155,
                                      left: widget.widths * 0.14,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:129,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[129]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[129]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  ///29 30
                                  Positioned(
                                      bottom: widget.heights * 0.15,
                                      left: widget.widths * 0.14,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:130,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[130]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[130]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),
                                  ///26 27
                                  Positioned(
                                      bottom: widget.heights * 0.155,
                                      left: widget.widths * 0.205,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:125,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[125]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[125]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),
                                  ///25 26
                                  Positioned(
                                      top: widget.heights * 0.155,
                                      left: widget.widths * 0.205,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:124,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[124]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[124]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  ///23 24
                                  Positioned(
                                      bottom: widget.heights * 0.15,
                                      left: widget.widths * 0.268,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:120,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[120]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[120]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),


                                  ///22 23
                                  Positioned(
                                      top: widget.heights * 0.155,
                                      left: widget.widths * 0.267,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:119,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[119]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[119]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),




                                  /// 20 21
                                  Positioned(
                                      bottom: widget.heights * 0.155,
                                      left: widget.widths * 0.335,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:115,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[115]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[115]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),


                                  ///19 20
                                  Positioned(
                                      top: widget.heights * 0.155,
                                      left: widget.widths * 0.332,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:114,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[114]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[114]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),


                                  ///17 18
                                  Positioned(
                                      bottom: widget.heights * 0.15,
                                      right: widget.widths * 0.332,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:110,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[110]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[110]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  ///16 17
                                  Positioned(
                                      top: widget.heights * 0.155,
                                      right: widget.widths * 0.333,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:109,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[109]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[109]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  ///14 15
                                  Positioned(
                                      bottom: widget.heights * 0.15,
                                      right: widget.widths * 0.271,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:105,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[105]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[105]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  ///13 14
                                  Positioned(
                                      top: widget.heights * 0.155,
                                      right: widget.widths * 0.267,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:104,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[104]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[104]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),
                                  ///11 12
                                  Positioned(
                                      bottom: widget.heights * 0.15,
                                      right: widget.widths * 0.20,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:102,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[102]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[102]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),
                                  ///10 11
                                  Positioned(
                                      top: widget.heights * 0.155,
                                      right: widget.widths * 0.203,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:103,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[103]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[103]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  ///7 8
                                  Positioned(
                                      top: widget.heights * 0.155,
                                      right: widget.widths * 0.14,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:98,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[98]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[98]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  ///8 9
                                  Positioned(
                                      bottom: widget.heights * 0.15,
                                      right: widget.widths * 0.14,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:97,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[97]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[97]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),


                                  ///5 6
                                  Positioned(
                                      bottom: widget.heights * 0.15,
                                      right: widget.widths * 0.07,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:90,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[90]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[90]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),


                                  /// 4 5
                                  Positioned(
                                      top: widget.heights * 0.155,
                                      right: widget.widths * 0.07,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:89,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[89]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[89]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  ///1 2
                                  Positioned(
                                      top: widget.heights * 0.155,
                                      right: widget.widths * 0.01,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:87,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[87]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[87]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),
                                  /// 2 3
                                  Positioned(
                                      bottom: widget.heights * 0.15,
                                      right: widget.widths * 0.01,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:88,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[88]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[88]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  ///34 31
                                  Positioned(
                                      top: widget.heights * 0.04,
                                      left: widget.widths * 0.043,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:141,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[141]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[141]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  /// 31 28
                                  Positioned(
                                      top: widget.heights * 0.04,
                                      left: widget.widths * 0.107,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:136,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[136]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[136]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  ///28 25
                                  Positioned(
                                      top: widget.heights * 0.04,
                                      left: widget.widths * 0.173,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:131,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[131]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[131]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  ///25 22
                                  Positioned(
                                      top: widget.heights * 0.04,
                                      left: widget.widths * 0.235,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:126,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[126]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[126]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  ///22 19
                                  Positioned(
                                      top: widget.heights * 0.04,
                                      left: widget.widths * 0.299,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:121,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[121]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[121]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))
                                      )
                                  ),

                                  ///19 16
                                  Positioned(
                                      top: widget.heights * 0.06,
                                      left: widget.widths * 0.37,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:116,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[116]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[116]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  ///16 13
                                  Positioned(
                                      top: widget.heights * 0.04,
                                      right: widget.widths * 0.302,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:111,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[111]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[111]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  ///13 10
                                  Positioned(
                                      top: widget.heights * 0.04,
                                      right: widget.widths * 0.235,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:106,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[106]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[106]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  ///10 7
                                  Positioned(
                                      top: widget.heights * 0.04,
                                      right: widget.widths * 0.169,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:101,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[101]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[101]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  ///7  4
                                  Positioned(
                                      top: widget.heights * 0.04,
                                      right: widget.widths * 0.105,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:94,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[94]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[94]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  ///4  1
                                  Positioned(
                                      top: widget.heights * 0.04,
                                      right: widget.widths * 0.042,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:93,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[93]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[93]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  ///35 32
                                  Positioned(
                                      top: widget.heights * 0.24,
                                      left: widget.widths * 0.043,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:142,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[142]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[142]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  /// 32 29
                                  Positioned(
                                      top: widget.heights * 0.24,
                                      left: widget.widths * 0.105,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:137,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[137]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[137]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  /// 29 26
                                  Positioned(
                                      top: widget.heights * 0.24,
                                      left: widget.widths * 0.173,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:132,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[132]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[132]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  /// 26 23
                                  Positioned(
                                      top: widget.heights * 0.24,
                                      left: widget.widths * 0.234,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:127,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[127]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[127]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  /// 23 20
                                  Positioned(
                                      top: widget.heights * 0.24,
                                      left: widget.widths * 0.303,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:122,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[122]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[122]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  ///20 17
                                  Positioned(
                                      top: widget.heights * 0.24,
                                      left: widget.widths * 0.365,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:117,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[117]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[117]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  /// 17 14
                                  Positioned(
                                      top: widget.heights * 0.24,
                                      right: widget.widths * 0.30,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:112,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[112]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[112]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  ///14 11
                                  Positioned(
                                      top: widget.heights * 0.24,
                                      right: widget.widths * 0.235,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:107,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[107]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[107]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  /// 11 8
                                  Positioned(
                                      top: widget.heights * 0.24,
                                      right: widget.widths * 0.17,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:100,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[100]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[100]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  /// 8 5
                                  Positioned(
                                      top: widget.heights * 0.24,
                                      right: widget.widths * 0.105,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:95,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[95]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[95]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  ///5 2
                                  Positioned(
                                      top: widget.heights * 0.24,
                                      right: widget.widths * 0.042,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:92,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[92]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[92]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),






                                  ///36 wali line


                                  ///36 33
                                  Positioned(
                                      top: widget.heights * 0.45,
                                      left: widget.widths * 0.043,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:143,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[143]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[143]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  /// 33 30
                                  Positioned(
                                      top: widget.heights * 0.45,
                                      left: widget.widths * 0.107,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:138,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },




                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[138]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[138]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  /// 30 27
                                  Positioned(
                                      top: widget.heights * 0.45,
                                      left: widget.widths * 0.175,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:133,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[133]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[133]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  /// 27 24
                                  Positioned(
                                      top: widget.heights * 0.45,
                                      left: widget.widths * 0.240,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:128,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[128]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[128]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  /// 24 21
                                  Positioned(
                                      top: widget.heights * 0.45,
                                      left: widget.widths * 0.300,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:123,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[123]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[123]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  /// 21 18
                                  Positioned(
                                      top: widget.heights * 0.45,
                                      right: widget.widths * 0.362,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:118,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[118]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[118]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  /// 18 15
                                  Positioned(
                                      top: widget.heights * 0.45,
                                      right: widget.widths * 0.30,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:113,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[113]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[113]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  /// 15 12
                                  Positioned(
                                      // top: widget.heights * 0.45,
                                      // right: widget.widths * 0.234,
                                      top: widget.heights * 0.54,
                                      right: widget.widths * 0.30,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:108,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[108]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[108]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  /// 12 9
                                  Positioned(
                                      top: widget.heights * 0.45,
                                      right: widget.widths * 0.17,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:99,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[99]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[99]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  /// 9 6
                                  Positioned(
                                      top: widget.heights * 0.45,
                                      right: widget.widths * 0.115,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:96,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[96]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[96]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),

                                  ///6 3
                                  Positioned(
                                      top: widget.heights * 0.45,
                                      right: widget.widths * 0.050,
                                      child:
                                      InkWell(

                                          onTap: chiptime==false?(){}
                                              : (){

                                            betlog(bet:91,
                                                amount:batam,
                                                betimg:'2');
                                            yui();   Sound('audio/coin.mp3');

                                          },
                                          child:  otherdata==null?
                                          Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          otherdata[91]['total']==null?Container(
                                            height: 17,
                                            width: 17,
                                            color: Colors.transparent,
                                          ):
                                          Center(child: Container(
                                            height: widths / 30,
                                             width: widths / 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage('assets/chipnew.png')
                                                )
                                            ),
                                            child: Center(
                                              child: Text(otherdata[91]['total'].toString(),
                                                style: TextStyle(fontSize: widths/100,
                                                    fontWeight: FontWeight.w900,color: Colors.black),
                                              ),
                                            ),
                                          ))

                                      )
                                  ),




                                ],
                              )

                          ),
                        ],
                      ),
                      InkWell(
                        onTap: chiptime==false?(){}
                            : (){
                          yui();
                          Sound('audio/coin.mp3');
                          betlog(bet:0,
                              amount:batam,
                              betimg:'2');
                        },
                        child: Container(
                            height: widget.heights*0.61,
                            width: widget.widths*0.07,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/mandir.png'),
                                )
                            ),
                            child:
                            Container(
                              child:otherdata==null?
                              Text(''):otherdata[36]['total']==null?Text(''):
                              Center(child: Container(

                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/chipnew.png')
                                    )
                                ),
                                child: Center(
                                  child: Text(otherdata[36]['total'].toString(),
                                    style: TextStyle(fontSize: widths/100,
                                        fontWeight: FontWeight.w900,color: Colors.black),
                                  ),
                                ),
                              )),
                            )

                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: widget.widths*0.06,),
                    child: Container(
                      height: widget.widths*0.12,
                      width: widget.widths*0.770,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/oddeven.png')
                          )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            //padding: EdgeInsets.only(left: widget.widths*0.07,),
                            // width: widget.widths*2.20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Container(
                                //    height: widget.heights*0.20,
                                //    width: widget.widths*0.1,),

                                InkWell(

                                  onTap: chiptime==false?(){}
                                      : (){
                                    yui();
                                    Sound('audio/coin.mp3');
                                    betlog(bet:39,
                                        amount:batam,
                                        betimg:'2');
                                    thirdtwelve();
                                  },
                                  child: Container(

                                    height: widget.widths*0.06,
                                    width: widget.widths*0.26,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.transparent,
                                          width: 1,
                                        )
                                    ),
                                    child:  otherdata==null?Text(''):otherdata[39]['total']==null?Text(''):
                                    Center(child: Container(
                                      height: widths / 30,
                                       width: widths / 30,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage('assets/chipnew.png')
                                          )
                                      ),
                                      child: Center(
                                        child: Text(otherdata[39]['total'].toString(),
                                          style: TextStyle(fontSize: widths/100,
                                              fontWeight: FontWeight.w900,color: Colors.black),
                                        ),
                                      ),
                                    )),
                                    //         Center(child: Text('3rd 12',
                                    //           style: GoogleFonts.playfairDisplay(
                                    //     textStyle:TextStyle(
                                    // fontSize: widget.heights*0.07, fontWeight: FontWeight.w900,color: Colors.transparent,
                                    //  ),
                                    //       )
                                    //         )),
                                  ),
                                ),

                                InkWell(

                                  onTap: chiptime==false?(){}
                                      : (){
                                    yui();   Sound('audio/coin.mp3');
                                    betlog(bet:38,
                                        amount:batam,
                                        betimg:'2');
                                    secondtwelve();
                                  },
                                  child: Container(
                                    height: widget.widths*0.06,
                                    width:  widget.widths*0.26,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.transparent,
                                          width: 1,
                                        )
                                    ),
                                    child:   otherdata==null?Text(''):otherdata[38]['total']==null?Text(''):
                                    Center(child: Container(
                                      height: widths / 30,
                                       width: widths / 30,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage('assets/chipnew.png')
                                          )
                                      ),
                                      child: Center(
                                        child: Text(otherdata[38]['total'].toString(),
                                          style: TextStyle(fontSize: widths/100,
                                              fontWeight: FontWeight.w900,color: Colors.black),
                                        ),
                                      ),
                                    )),
                                    // Center(child: Text('2nd 12',
                                    //     style: GoogleFonts.playfairDisplay(
                                    //       textStyle:TextStyle(
                                    //           fontSize: widget.heights*0.07, fontWeight: FontWeight.w900,
                                    //         color: Colors.transparent,
                                    //       ),
                                    //     )
                                    // )),
                                  ),
                                ),

                                InkWell(

                                  onTap: chiptime==false?(){}
                                      : (){
                                    yui();   Sound('audio/coin.mp3');
                                    betlog(bet:37,
                                        amount:batam,
                                        betimg:'2');
                                    firsttwelve();
                                  },
                                  child: Container(
                                    height: widget.widths*0.06,
                                    width: widget.widths*0.25,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.transparent,
                                          width: 1,
                                        )
                                    ),
                                    child:   otherdata==null?Text(''):otherdata[37]['total']==null?Text(''):
                                    Center(child: Container(
                                      height: widths / 30,
                                       width: widths / 30,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage('assets/chipnew.png')
                                          )
                                      ),
                                      child: Center(
                                        child: Text(otherdata[37]['total'].toString(),
                                          style: TextStyle(fontSize: widths/100,
                                              fontWeight: FontWeight.w900,color: Colors.black),
                                        ),
                                      ),
                                    )),
                                    //  Center(child: Text('1st 12',
                                    //    style: GoogleFonts.playfairDisplay(
                                    // textStyle:TextStyle(
                                    //   fontSize: widget.heights*0.07, fontWeight: FontWeight.w900,
                                    //   color: Colors.transparent,
                                    //   ),
                                    //  ),)),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Container(
                            //padding: EdgeInsets.only(left: widget.widths*0.07,),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Container(
                                //   height: widget.heights*0.15,
                                //   width: widget.widths*0.2,),

                                InkWell(

                                  onTap: chiptime==false?(){}
                                      : (){

                                    yui();   Sound('audio/coin.mp3');
                                    betlog(bet: 46, amount: batam, betimg: '');
                                    ninteentothirtysix();
                                  },
                                  child: Container(
                                    // height: widget.heights*0.15,
                                    height: widget.widths*0.06,
                                    width: widget.widths*0.125,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.transparent,
                                          width: 1,
                                        )
                                    ),
                                    child:  otherdata==null?Text(''):otherdata[46]['total']==null?Text(''):
                                    Center(child: Container(
                                      height: widths / 30,
                                       width: widths / 30,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage('assets/chipnew.png')
                                          )
                                      ),
                                      child: Center(
                                        child: Text(otherdata[46]['total'].toString(),
                                          style: TextStyle(fontSize: widths/100,
                                              fontWeight: FontWeight.w900,color: Colors.black),
                                        ),
                                      ),
                                    )),
                                    // Center(child: Text('19 to 36',
                                    //     style: GoogleFonts.playfairDisplay(
                                    //       textStyle:TextStyle(
                                    //           fontSize: widget.heights*0.07, fontWeight: FontWeight.w900,
                                    //           color: Colors.transparent,
                                    //       ),
                                    //     )
                                    // )),
                                  ),
                                ),

                                InkWell(

                                  onTap: chiptime==false?(){}
                                      : (){
                                    yui();   Sound('audio/coin.mp3');
                                    betlog(bet:40,
                                        amount:batam,
                                        betimg:'2');
                                    odd();
                                  },
                                  child: Container(
                                    height: widget.widths*0.06,
                                    width: widget.widths*0.13,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.transparent,
                                          width: 1,
                                        )
                                    ),
                                    child:  otherdata==null?Text(''):otherdata[40]['total']==null?Text(''):
                                    Center(child: Container(
                                      height: widths / 30,
                                       width: widths / 30,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage('assets/chipnew.png')
                                          )
                                      ),
                                      child: Center(
                                        child: Text(otherdata[40]['total'].toString(),
                                          style: TextStyle(fontSize: widths/100,
                                              fontWeight: FontWeight.w900,color: Colors.black),
                                        ),
                                      ),
                                    )),
                                    // Center(child: Text('ODD',
                                    //     style: GoogleFonts.playfairDisplay(
                                    //       textStyle:TextStyle(
                                    //           fontSize: widget.heights*0.07, fontWeight: FontWeight.w900,
                                    //         color: Colors.transparent,
                                    //       ),
                                    //     )
                                    // )
                                    // ),
                                  ),
                                ),

                                InkWell(

                                  onTap: chiptime==false?(){}
                                      : (){
                                    yui();   Sound('audio/coin.mp3');
                                    betlog(bet:47,
                                        amount:batam,
                                        betimg:'2');
                                    red_color();
                                  },
                                  child: Container(
                                    height: widget.widths*0.06,
                                    width: widget.widths*0.13,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color:Colors.transparent,
                                          width: 1,
                                        )
                                    ),
                                    child: otherdata==null?Text(''):otherdata[47]['total']==null?Text(''):
                                    Center(child: Container(
                                      height: widths / 30,
                                       width: widths / 30,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage('assets/chipnew.png')
                                          )
                                      ),
                                      child: Center(
                                        child: Text(otherdata[47]['total'].toString(),
                                          style: TextStyle(fontSize: widths/100,
                                              fontWeight: FontWeight.w900,color: Colors.black),
                                        ),
                                      ),
                                    )),
                                    // child: Image.asset("assets/diamond.png",
                                    //   color: Colors.transparent,fit: BoxFit.fill,),
                                  ),
                                ),

                                InkWell(

                                  onTap: chiptime==false?(){}
                                      : (){
                                    yui();   Sound('audio/coin.mp3');
                                    betlog(bet:48,
                                        amount:batam,
                                        betimg:'2');
                                    black_color();
                                  },
                                  child: Container(
                                    height: widget.widths*0.06,
                                    width: widget.widths*0.13,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.transparent,
                                          width: 1,
                                        )
                                    ),
                                    child:  otherdata==null?Text(''):otherdata[48]['total']==null?Text(''):
                                    Center(child: Container(
                                      height: widths / 30,
                                       width: widths / 30,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage('assets/chipnew.png')
                                          )
                                      ),
                                      child: Center(
                                        child: Text(otherdata[48]['total'].toString(),
                                          style: TextStyle(fontSize: widths/100,
                                              fontWeight: FontWeight.w900,color: Colors.black),
                                        ),
                                      ),
                                    )),
                                    // child: Image.asset("assets/diamond.png",color: Colors.black,fit: BoxFit.fill,),
                                  ),
                                ),

                                InkWell(

                                  onTap: chiptime==false?(){}
                                      : (){
                                    yui();   Sound('audio/coin.mp3');
                                    betlog(bet:41,
                                        amount:batam,
                                        betimg:'2');
                                    even();
                                  },
                                  child: Container(
                                    height: widget.widths*0.06,
                                    width: widget.widths*0.13,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color:Colors.transparent,
                                          width: 1,
                                        )
                                    ),
                                    child:
                                    otherdata==null?Text(''):otherdata[41]['total']==null?Text(''):
                                    Center(child: Container(
                                      height: widths / 30,
                                       width: widths / 30,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage('assets/chipnew.png')
                                          )
                                      ),
                                      child: Center(
                                        child: Text(otherdata[41]['total'].toString(),
                                          style: TextStyle(fontSize: widths/100,
                                              fontWeight: FontWeight.w900,color: Colors.black),
                                        ),
                                      ),
                                    )),
                                  ),
                                ),

                                InkWell(

                                  onTap: chiptime==false?(){}
                                      : (){
                                    yui();   Sound('audio/coin.mp3');
                                    betlog(
                                        bet:45,
                                        amount:batam,
                                        betimg:'2');
                                    onetoninteenx();
                                  },
                                  child: Container(
                                    height: widget.widths*0.06,
                                    width: widget.widths*0.12,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.transparent,
                                          width: 1,
                                        )
                                    ),
                                    child:
                                    otherdata==null?Text(''):otherdata[45]['total']==null?Text(''):
                                    Center(child: Container(
                                      height: widths / 30,
                                       width: widths / 30,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage('assets/chipnew.png')
                                          )
                                      ),
                                      child: Center(
                                        child: Text(otherdata[45]['total'].toString(),
                                          style: TextStyle(fontSize: widths/100,
                                              fontWeight: FontWeight.w900,color: Colors.black),
                                        ),
                                      ),
                                    )),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],

              ),

              ///   -------------------******************-----6digit---------------
              Positioned(
                  top: widget.heights * 0.54,
                  left: widget.widths * 0.10,
                  child:
                  InkWell(

                      onTap: chiptime==false?(){}
                          : (){

                        betlog(bet:154,
                            amount:batam,
                            betimg:'2');
                        yui();   Sound('audio/coin.mp3');

                      },
                      child:  otherdata==null?
                      Container(
                        height: 17,
                        width: 17,
                        color: Colors.transparent,
                      ):
                      otherdata[154]['total']==null?Container(
                        height: 17,
                        width: 17,
                        color: Colors.transparent,
                      ):
                      Center(child: Container(
                        height: widths / 30,
                         width: widths / 30,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/chipnew.png')
                            )
                        ),
                        child: Center(
                          child: Text(otherdata[154]['total'].toString(),
                            style: TextStyle( fontSize: widths/100,
                                fontWeight: FontWeight.w900,color: Colors.black),
                          ),
                        ),
                      ))

                  )
              ),

              /// 33 30
              Positioned(
                  top: widget.heights * 0.54,
                  left: widget.widths * 0.167,
                  child:
                  InkWell(

                      onTap: chiptime==false?(){}
                          : (){

                        betlog(bet:153,
                            amount:batam,
                            betimg:'2');
                        yui();   Sound('audio/coin.mp3');

                      },
                      child:  otherdata==null?
                      Container(
                        height: 17,
                        width: 17,
                        color: Colors.transparent,
                      ):
                      otherdata[153]['total']==null?Container(
                        height: 17,
                        width: 17,
                        color: Colors.transparent,
                      ):
                      Center(child: Container(
                        height: widths / 30,
                         width: widths / 30,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/chipnew.png')
                            )
                        ),
                        child: Center(
                          child: Text(otherdata[153]['total'].toString(),
                            style: TextStyle(fontSize: widths/100,
                                fontWeight: FontWeight.w900,color: Colors.black),
                          ),
                        ),
                      ))

                  )
              ),

              /// 30 27
              Positioned(
                  top: widget.heights * 0.54,
                  left: widget.widths * 0.230,
                  child:
                  InkWell(

                      onTap: chiptime==false?(){}
                          : (){

                        betlog(bet:152,
                            amount:batam,
                            betimg:'2');
                        yui();   Sound('audio/coin.mp3');

                      },
                      child:  otherdata==null?
                      Container(
                        height: 17,
                        width: 17,
                        color: Colors.transparent,
                      ):
                      otherdata[152]['total']==null?Container(
                        height: 17,
                        width: 17,
                        color: Colors.transparent,
                      ):
                      Center(child: Container(
                        height: widths / 30,
                         width: widths / 30,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/chipnew.png')
                            )
                        ),
                        child: Center(
                          child: Text(otherdata[152]['total'].toString(),
                            style: TextStyle(fontSize: widths/100,
                                fontWeight: FontWeight.w900,color: Colors.black),
                          ),
                        ),
                      ))

                  )
              ),

              /// 27 24

              Positioned(
                  top: widget.heights * 0.54,
                  left: widget.widths * 0.30,
                  child:
                  InkWell(

                      onTap: chiptime==false?(){}
                          : (){

                        betlog(bet:151,
                            amount:batam,
                            betimg:'2');
                        yui();   Sound('audio/coin.mp3');

                      },
                      child:  otherdata==null?
                      Container(
                        height: 17,
                        width: 17,
                        color: Colors.transparent,
                      ):
                      otherdata[151]['total']==null?Container(
                        height: 17,
                        width: 17,
                        color: Colors.transparent,
                      ):
                      Center(child: Container(
                        height: widths / 30,
                         width: widths / 30,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/chipnew.png')
                            )
                        ),
                        child: Center(
                          child: Text(otherdata[151]['total'].toString(),
                            style: TextStyle(fontSize: widths/100,
                                fontWeight: FontWeight.w900,color: Colors.black),
                          ),
                        ),
                      ))

                  )
              ),
              /// 24 21
              Positioned(
                  top: widget.heights * 0.54,
                  left: widget.widths * 0.360,
                  child:
                  InkWell(

                      onTap: chiptime==false?(){}
                          : (){

                        betlog(bet:150,
                            amount:batam,
                            betimg:'2');
                        yui();   Sound('audio/coin.mp3');

                      },
                      child:  otherdata==null?
                      Container(
                        height: 17,
                        width: 17,
                        color: Colors.transparent,
                      ):
                      otherdata[150]['total']==null?Container(
                        height: 17,
                        width: 17,
                        color: Colors.transparent,
                      ):
                      Center(child: Container(
                        height: widths / 30,
                         width: widths / 30,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/chipnew.png')
                            )
                        ),
                        child: Center(
                          child: Text(otherdata[150]['total'].toString(),
                            style: TextStyle(fontSize: widths/100,
                                fontWeight: FontWeight.w900,color: Colors.black),
                          ),
                        ),
                      ))

                  )
              ),
////--------
              /// 21 18
              Positioned(
                  top: widget.heights * 0.54,
                  right: widget.widths * 0.433,
                  child:
                  InkWell(

                      onTap: chiptime==false?(){}
                          : (){

                        betlog(bet:149,
                            amount:batam,
                            betimg:'2');
                        yui();   Sound('audio/coin.mp3');

                      },
                      child:  otherdata==null?
                      Container(
                        height: 17,
                        width: 17,
                        color: Colors.transparent,
                      ):
                      otherdata[149]['total']==null?Container(
                        height: 17,
                        width: 17,
                        color: Colors.transparent,
                      ):
                      Center(child: Container(
                        height: widths / 30,
                         width: widths / 30,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/chipnew.png')
                            )
                        ),
                        child: Center(
                          child: Text(otherdata[149]['total'].toString(),
                            style: TextStyle(fontSize: widths/100,
                                fontWeight: FontWeight.w900,color: Colors.black),
                          ),
                        ),
                      ))

                  )
              ),

              /// 18 15
              Positioned(
                  top: widget.heights * 0.54,
                  right: widget.widths * 0.370,
                  child:
                  InkWell(

                      onTap: chiptime==false?(){}
                          : (){

                        betlog(bet:148,
                            amount:batam,
                            betimg:'2');
                        yui();   Sound('audio/coin.mp3');

                      },
                      child:  otherdata==null?
                      Container(
                        height: 17,
                        width: 17,
                        color: Colors.transparent,
                      ):
                      otherdata[148]['total']==null?Container(
                        height: 17,
                        width: 17,
                        color: Colors.transparent,
                      ):
                      Center(child: Container(
                        height: widths / 30,
                         width: widths / 30,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/chipnew.png')
                            )
                        ),
                        child: Center(
                          child: Text(otherdata[148]['total'].toString(),
                            style: TextStyle(fontSize: widths/100,
                                fontWeight: FontWeight.w900,color: Colors.black),
                          ),
                        ),
                      ))

                  )
              ),

              /// 15 12
              Positioned(
                  top: widget.heights * 0.54,
                  right: widget.widths * 0.30,
                  child:
                  InkWell(

                      onTap: chiptime==false?(){}
                          : (){

                        betlog(bet:147,
                            amount:batam,
                            betimg:'2');
                        yui();   Sound('audio/coin.mp3');

                      },
                      child:  otherdata==null?
                      Container(
                        height: 17,
                        width: 17,
                        color: Colors.transparent,
                      ):
                      otherdata[147]['total']==null?Container(
                        height: 17,
                        width: 17,
                        color: Colors.transparent,
                      ):
                      Center(child: Container(
                        height: widths / 30,
                         width: widths / 30,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/chipnew.png')
                            )
                        ),
                        child: Center(
                          child: Text(otherdata[147]['total'].toString(),
                            style: TextStyle(fontSize: widths/100,
                                fontWeight: FontWeight.w900,color: Colors.black),
                          ),
                        ),
                      ))

                  )
              ),

              /// 12 9
              Positioned(
                  top: widget.heights * 0.54,
                  right: widget.widths * 0.238,
                  child:
                  InkWell(

                      onTap: chiptime==false?(){}
                          : (){

                        betlog(bet:146,
                            amount:batam,
                            betimg:'2');
                        yui();   Sound('audio/coin.mp3');

                      },
                      child:  otherdata==null?
                      Container(
                        height: 17,
                        width: 17,
                        color: Colors.transparent,
                      ):
                      otherdata[146]['total']==null?Container(
                        height: 17,
                        width: 17,
                        color: Colors.transparent,
                      ):
                      Center(child: Container(
                        height: widths / 30,
                         width: widths / 30,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/chipnew.png')
                            )
                        ),
                        child: Center(
                          child: Text(otherdata[146]['total'].toString(),
                            style: TextStyle(fontSize: widths/100,
                                fontWeight: FontWeight.w900,color: Colors.black),
                          ),
                        ),
                      ))

                  )
              ),

              /// 9 6
              Positioned(
                  top: widget.heights * 0.54,
                  right: widget.widths * 0.173,
                  child:
                  InkWell(

                      onTap: chiptime==false?(){}
                          : (){

                        betlog(bet:145,
                            amount:batam,
                            betimg:'2');
                        yui();   Sound('audio/coin.mp3');

                      },
                      child:  otherdata==null?
                      Container(
                        height: 17,
                        width: 17,
                        color: Colors.transparent,
                      ):
                      otherdata[145]['total']==null?Container(
                        height: 17,
                        width: 17,
                        color: Colors.transparent,
                      ):
                      Center(child: Container(
                        height: widths / 30,
                         width: widths / 30,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/chipnew.png')
                            )
                        ),
                        child: Center(
                          child: Text(otherdata[145]['total'].toString(),
                            style: TextStyle(fontSize: widths/100,
                                fontWeight: FontWeight.w900,color: Colors.black),
                          ),
                        ),
                      ))

                  )
              ),

              ///6 3
              Positioned(
                  top: widget.heights * 0.54,
                  right: widget.widths * 0.111,
                  child:
                  InkWell(

                      onTap: chiptime==false?(){}
                          : (){


                        betlog(bet:144,
                            amount:batam,
                            betimg:'2');
                        yui();   Sound('audio/coin.mp3');

                      },
                      child:  otherdata==null?
                      Container(
                        height: 17,
                        width: 17,
                        color: Colors.transparent,
                      ):
                      otherdata[144]['total']==null?Container(
                        height: 17,
                        width: 17,
                        color: Colors.transparent,
                      ):
                      Center(child: Container(
                        height: widths / 30,
                         width: widths / 30,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/chipnew.png')
                            )
                        ),
                        child: Center(
                          child: Text(otherdata[144]['total'].toString(),
                            style: TextStyle(fontSize: widths/100,
                                fontWeight: FontWeight.w900,color: Colors.black),
                          ),
                        ),
                      ))

                  )
              ),



            ],
          ),
        ),
      ),
    );
  }

  setclr(){
    setState(() {
      v1=55;
      v2=55;
      v3=55;
      v4=55;
      v5=55;
      v6=55;
      v7=55;
      v8=55;
      v9=55;
      v10=55;
      v11=55;
      v12=55;
      v13=55;
      v14=55;
      v15=55;
      v16=55;
      v17=55;
      v18=55;
    });
  }
  fristtab() {

    setclr();
    setState(() {
      v1=34;
      v2=31;
      v3=28;
      v4=25;
      v5=22;
      v6=19;
      v7=16;
      v8=13;
      v9=10;
      v10=7;
      v11=4;
      v12=1;

    });
  }
  secondtab() {
    setclr();

    setState(() {
      v1=35;
      v2=32;
      v3=29;
      v4=26;
      v5=23;
      v6=20;
      v7=17;
      v8=14;
      v9=11;
      v10=8;
      v11=5;
      v12=2;

    });
  }
  thirdtab() {
    setclr();

    setState(() {
      v1=36;
      v2=33;
      v3=30;
      v4=27;
      v5=24;
      v6=21;
      v7=18;
      v8=15;
      v9=12;
      v10=9;
      v11=6;
      v12=3;
    });
  }
  thirdtwelve() {
    setclr();

    setState(() {
      v1=27;
      v2=28;
      v3=29;
      v4=30;
      v5=31;
      v6=32;
      v7=33;
      v8=34;
      v9=35;
      v10=36;
      v11=25;
      v12=26;
    });
  }
  secondtwelve() {
    setclr();

    setState(() {
      v1=13;
      v2=14;
      v3=15;
      v4=16;
      v5=17;
      v6=18;
      v7=19;
      v8=20;
      v9=21;
      v10=22;
      v11=23;
      v12=24;
    });
  }
  firsttwelve() {
    setclr();

    setState(() {
      v1=1;
      v2=2;
      v3=3;
      v4=4;
      v5=5;
      v6=6;
      v7=7;
      v8=8;
      v9=9;
      v10=10;
      v11=11;
      v12=12;
    });
  }
  ninteentothirtysix() {
    setclr();

    setState(() {
      v1=19;
      v2=20;
      v3=21;
      v4=22;
      v5=23;
      v6=24;
      v7=25;
      v8=26;
      v9=27;
      v10=28;
      v11=29;
      v12=30;
      v13=31;
      v14=32;
      v15=33;
      v16=34;
      v17=35;
      v18=36;
    });
  }
  onetoninteenx() {
    setclr();

    setState(() {
      v1=1;
      v2=2;
      v3=3;
      v4=4;
      v5=5;
      v6=6;
      v7=7;
      v8=8;
      v9=9;
      v10=10;
      v11=11;
      v12=12;
      v13=13;
      v14=15;
      v15=16;
      v16=17;
      v17=18;
      v18=14;


    });
  }
  red_color() {
    setclr();
    setState(() {
      v1=1;
      v2=3;
      v3=5;
      v4=7;
      v5=9;
      v6=12;
      v7=14;
      v8=16;
      v9=18;
      v10=19;
      v11=21;
      v12=23;
      v13=25;
      v14=27;
      v15=30;
      v16=34;
      v17=36;
      v18=32;


    });
  }

  black_color() {
    setclr();
    setState(() {
      v1=2;
      v2=4;
      v3=6;
      v4=8;
      v5=10;
      v6=11;
      v7=13;
      v8=15;
      v9=17;
      v10=20;
      v11=22;
      v12=24;
      v13=26;
      v14=28;
      v15=29;
      v16=31;
      v17=33;
      v18=35;


    });
  }


  odd() {
    setclr();
    setState(() {
      v1=1;
      v2=3;
      v3=5;
      v4=7;
      v5=9;
      v6=11;
      v7=13;
      v8=15;
      v9=17;
      v10=19;
      v11=21;
      v12=23;
      v13=25;
      v14=27;
      v15=29;
      v16=31;
      v17=33;
      v18=35;


    });
  }
  even() {
    setclr();
    setState(() {
      v1=2;
      v2=4;
      v3=6;
      v4=8;
      v5=10;
      v6=12;
      v7=14;
      v8=16;
      v9=18;
      v10=20;
      v11=22;
      v12=24;
      v13=26;
      v14=28;
      v15=30;
      v16=32;
      v17=34;
      v18=36;


    });
  }
  zero() {
    setclr();
    setState(() {
      v1=0;
    });
  }

  List map=[];
  List<String> batnoo= [];
  List<String> ammount= [];
  List<Widget> listArray = [];


  betlog({required int bet, required amount, required String betimg}) async{

    var gmno= widget.gnno;
    final prefs = await SharedPreferences.getInstance();
    final userid=prefs.getString("userId");

    if(amount != 'rem'){
      final response = await http.get(
        Uri.parse(
            "https://realdeal.games/admin/bet.php?gamesno=$gmno&amount=$amount&userid=$userid&gameid=1&bet=$bet&gametype=1"),
      );

      final data = jsonDecode(response.body);
      if (data['error'] == "400") {
        Sound('audio/BalanceLow.mp3');

        setclr();
        Fluttertoast.showToast(
            msg: data['msg'],
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.transparent,
            textColor: Colors.transparent,
            fontSize: 16.0
        );
      } else {
        setclr();


        // Fluttertoast.showToast(
        //     msg: data['msg'],
        //     toastLength: Toast.LENGTH_SHORT,
        //     gravity: ToastGravity.CENTER,
        //     timeInSecForIosWeb: 1,
        //     backgroundColor: Colors.transparent,
        //     textColor: Colors.transparent,
        //     fontSize: 16.0
        // );

      }

    }else{
      final response = await http.get(
        Uri.parse(
            "https://realdeal.games/admin/removelastnumber.php?gameid=1&gametype=1&gamesno=$gmno&userid=$userid&betno=$bet"
        ),
      );
    }


  }

  List<alldata> allround = [];

  var otherdata;

  // showcurrent()
  yui()async{
    final prefs = await SharedPreferences.getInstance();
    final userid=prefs.getString("userId");
    var  gmn= widget.gnno;
    final pr= await SharedPreferences.getInstance();
    setState(() {
      batam= pr.getString('coin')??'0';
    });
    final res= await http.get(Uri.parse('https://realdeal.games/admin/showcurrentbet.php?gamesno=$gmn&userid=$userid&gametype=1&gameid=1'));
    final data=jsonDecode(res.body)['data'];
    setState(() {
      otherdata=data;
    });
  }

}

class alldata {
  String? id;
  String? total;
  String? betno;
  String? acnumber;
  String? number;
  String? description;

  alldata(
      this.id,
      this.total,
      this.betno,
      this.acnumber,
      this.number,
      this.description,
      );

}

class MenuTile{
  String num;
  String img;

  MenuTile({
    required this.num, required this.img
  });

}