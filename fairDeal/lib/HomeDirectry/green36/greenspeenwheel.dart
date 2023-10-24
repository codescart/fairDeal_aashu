import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';
import 'package:fairdeal/HomeDirectry/Roulette_timex/Roulette_timex_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';


class greenCasino extends StatefulWidget {
  final double widthc;
  final double heightc;
  final double pad;
  final String result;
  final int time;
  final String gnno;

  greenCasino({ required this.widthc,
    required this.heightc,
    required this.pad,
    required this.result,
    required this.time,
    required this.gnno,});

  @override
  _greenCasinoState createState() => _greenCasinoState();
}

class _greenCasinoState extends State<greenCasino> with SingleTickerProviderStateMixin{


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

  final AudioCache  _player = AudioCache(fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP),
  );
  sound()async{

    await _player.play('audio/casinowheel.mp3');
  }

  soundbet()async{
    await _player.play('audio/Betting Playd Successfully.mp3');
  }
  @override
  void initState() {
    tripleapis();
    _dateTime = DateTime.now().toUtc();
    _clockModel = ClockModel();
    _clockModel.is24HourFormat =  true;
    _dateTime = DateTime.now().toUtc();
    _clockModel.hour = _dateTime.hour;
    _clockModel.minute = _dateTime.minute;
    _clockModel.second = _dateTime.second;

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      _dateTime = DateTime.now().toUtc();
      _clockModel.hour = _dateTime.hour;
      _clockModel.minute = _dateTime.minute;
      _clockModel.second = _dateTime.second;


      if(_clockModel.second==53){
        tripleapi();
      }
      if(_clockModel.second==50){
        betconfirm();
      }

    });

    super.initState();

  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  late DateTime _dateTime;
  late ClockModel _clockModel;
  late Timer _timer;
  var win;
  tripleapis() async {
    var gmno= widget.gnno;

    final respo = await http.get(
      Uri.parse('https://realdeal.games/admin/lastresult.php?gameid=2'),
    );
    // var
    var dat = jsonDecode(respo.body);
    var myInt1 = dat['lastwinbetno'];

    setState(() {
      win= dat['lastwinbetno'];
      selected = win-1;
      //
      // selected2 = myInt1 ;
    });


  }

  tripleapi() async {
    var gmno= widget.gnno;

    sound();
    // final res= await http.get(Uri.parse('https://casino.foundercodes.com/demo/betserial/roulett_res.php'));
    // final data = jsonDecode(res.body);
    final respo = await http.get(
      Uri.parse('https://realdeal.games/admin/lastresult.php?gameid=2'),
    );
    // var
    var dat = jsonDecode(respo.body);
    var myInt1 = dat['lastwinbetno'];

    setState(() {
      win= dat['lastwinbetno'];
      selected = win-1;
      //
      // selected2 = myInt1 ;
    });


  }


  int random(int min, int max) {
    return min + Random().nextInt(max - min);
  }
  pj() async{

    if(_clockModel.second==50){
      betconfirm();
    }

    if(_clockModel.second==52){
      tripleapi();
    }

  }
  betconfirm() async{

    var gmno= widget.gnno;
    final prefs = await SharedPreferences.getInstance();
    final userid=prefs.getString("userId");
    final response = await http.post(
      Uri.parse(
          "https://realdeal.games/admin/betlock.php?gameid=2&userid=$userid&gamesno=$gmno&gametype=1"),
    );
    final data = jsonDecode(response.body);

    if (data['error'] == "200") {

      Fluttertoast.showToast(
          msg: data['msg'],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
      soundbet();

    } else {
      Fluttertoast.showToast(
          msg: data['msg'],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
      // signup();
    }

  }
  @override
  Widget build(BuildContext context) {
    return InkWell(

      child: Container(
        width: widget.widthc,
        height: widget.widthc,

        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(child: Center(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/BADAROULLET.png"),
                        fit: BoxFit.fill
                    )),
                height: widget.widthc*0.90,
                width:  widget.widthc*0.90,
                child: InkWell(

                  onTap: (){
                    setState(() {
                      selected=15;
                    });
                  },
                  child: Padding(
                    // padding: EdgeInsets.all(10),
                    padding: EdgeInsets.all(widget.widthc*0.090),
                    child: FortuneWheel(
                      rotationCount:15,
                      animateFirst: false,
                      selected: selected,
                      duration:Duration(seconds: 5),
                      physics: CircularPanPhysics(
                        duration: Duration(seconds: 1),
                        curve: Curves.decelerate,
                      ),


                      indicators:  <FortuneIndicator>[
                        FortuneIndicator(

                            alignment: Alignment
                                .topCenter, // <-- changing the position of the indicator
                            child: Text('')
                        ),
                      ],

                      items: [
                        for (var it in items)
                          FortuneItem(
                              style: FortuneItemStyle(
                                color:
                                // Colors.transparent,
                                it=='0'? Colors.green :
                                it=='32'? Color(0xff8b1700):
                                it=='19'? Color(0xff8b1700):
                                it=='21'? Color(0xff8b1700):
                                it=='27'? Color(0xff8b1700):
                                it=='25'? Color(0xff8b1700):
                                it=='34'? Color(0xff8b1700):
                                it=='36'? Color(0xff8b1700):
                                it=='30'? Color(0xff8b1700):
                                it=='23'? Color(0xff8b1700):
                                it=='5'? Color(0xff8b1700):
                                it=='16'? Color(0xff8b1700):
                                it=='1'? Color(0xff8b1700):
                                it=='14'? Color(0xff8b1700):
                                it=='9'? Color(0xff8b1700):
                                it=='18'? Color(0xff8b1700):
                                it=='7'? Color(0xff8b1700):
                                it=='12'? Color(0xff8b1700):
                                it=='3'? Color(0xff8b1700):

                                Colors.black, // <-- custom circle slice fill color
                                borderColor: Colors.yellow, // <-- custom circle slice stroke color
                                borderWidth: 0, // <-- custom circle slice stroke width
                              ),
                              child:
                              Padding(
                                padding:  EdgeInsets.only(left:130.h-widget.pad),
                                child: RotatedBox(
                                    quarterTurns: 1,
                                    child: Text(it, style: TextStyle(fontSize: widget.widthc/24, fontWeight:FontWeight.w900,
                                        color: Colors.white
                                    ),)),
                              )),
                      ],
                      onAnimationEnd: () {
                      },
                    ),
                  ),
                ),
              ),
            )),
            Positioned(child:
            Center(
              child: Container(
                height: widget.widthc*0.60,
                child: FortuneWheel(
                  rotationCount:15,
                  animateFirst: false,
                  selected: selected,
                  duration:Duration(seconds: 5),

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
                        child:Padding(
                          padding:  EdgeInsets.only(top:
                          widget.widthc*0.01
                          ),
                          child: Image.asset('assets/ball.png',color: Colors.white,
                            height:widget.widthc*0.04,width: widget.widthc*0.05,),
                        )
                    ),
                  ],

                  items: [
                    for (var it in items)
                      FortuneItem(
                          style: FortuneItemStyle(
                            color:
                            // Colors.transparent,
                            it=='0'? Colors.green :
                            it=='32'? Color(0xff8b1700):
                            it=='19'? Color(0xff8b1700):
                            it=='21'? Color(0xff8b1700):
                            it=='27'? Color(0xff8b1700):
                            it=='25'? Color(0xff8b1700):
                            it=='34'? Color(0xff8b1700):
                            it=='36'? Color(0xff8b1700):
                            it=='30'? Color(0xff8b1700):
                            it=='23'? Color(0xff8b1700):
                            it=='5'? Color(0xff8b1700):
                            it=='16'? Color(0xff8b1700):
                            it=='1'? Color(0xff8b1700):
                            it=='14'? Color(0xff8b1700):
                            it=='9'? Color(0xff8b1700):
                            it=='18'? Color(0xff8b1700):
                            it=='7'? Color(0xff8b1700):
                            it=='12'? Color(0xff8b1700):
                            it=='3'? Color(0xff8b1700):

                            Colors.black, // <-- custom circle slice fill color
                            borderColor: Color(0xffD4AF37), // <-- custom circle slice stroke color
                            borderWidth: 1, // <-- custom circle slice stroke width
                          ),
                          child:
                          Padding(
                            padding:  EdgeInsets.only(left: 80.0),
                            child: RotatedBox(
                                quarterTurns: 1,
                                child: Text(it, style: TextStyle(fontSize: widget.heightc, fontWeight:FontWeight.w700,
                                    color: Colors.transparent
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



            Center(
              child: CircleAvatar(
                radius: widget.widthc*0.23,
                backgroundColor: Color(0xffe12c76),
                child: Center(child: Image.asset('assets/fff.png'),

                ),
              ),
            ),

          ],
        ),
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