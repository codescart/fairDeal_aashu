import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';
import 'package:fairdeal/HomeDirectry/Roulette_timex/Roulette_timex_home.dart';
import 'package:fairdeal/constant/blue_chota_roullet_dependency.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class blue_chotarolletapi extends StatefulWidget {
  final double widthc;
  final double heightc;
  final double pad;
  final String result;
  final int time;
  final String gnno;
  final bool timerclose;


  blue_chotarolletapi({
    required this.widthc,
    required this.heightc,
    required this.pad,
    required this.result,
    required this.time,
    required this.gnno, required this.timerclose,});

  @override
  _blue_chotarolletapiState createState() => _blue_chotarolletapiState();
}

class _blue_chotarolletapiState extends State<blue_chotarolletapi> with SingleTickerProviderStateMixin{

  // late final AnimationController _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 80000))..repeat();
  late final AnimationController _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 80))..repeat();

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

  @override
  void initState() {

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


      if(newone==true){
        tripleapis();
        setState(() {
          newone=false;
        });
      }
      if(_clockModel.second==49){
        sound();
        wheelSpinController.startWheel();
      }
      if(_clockModel.second==43){
        soundbet();
      }
      if(_clockModel.second==55){
        wheelSpinController.stopWheel(38-widget.time);
      }

    });

    super.initState();

  }


  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }


  bool newone=true;
  sound()async{

    await _player.play('audio/casinowheel.mp3');
  }

  soundbet()async{
    await _player.play('audio/Betting Playd Successfully.mp3');
  }
  String ?winno;
  int num=37;
  late DateTime _dateTime;
  late ClockModel _clockModel;
  late Timer _timer;
  int win=0;
  tripleapis() async {
    wheelSpinController.startWheel();
    var gmno= widget.gnno;

    final respo = await http.get(
      Uri.parse('https://realdeal.games/admin/lastresult.php?gameid=1'),
    );
    // var
    var dat = jsonDecode(respo.body);
    var myInt1 = dat['lastwinbetno'];
    setState(() {
      win= dat['lastwinbetno'];
      winno=dat['winnerno'];
      // int selecl =38-win;
      // selected=win==0?0:num-selecl;
      // wheelSpinController.stopWheel(selecl);

      // print('hhhhhhhhhhhhhhhhhsssssssss');
      //
      // print(selected);
      //
      // selected2 = myInt1 ;
    });

    wheelSpinController.stopWheel(38-win);
  }
  // tripleapi() async {
  //   var gmno= widget.gnno;
  //   wheelSpinController.startWheel();
  //
  //
  //   // final res= await http.get(Uri.parse('https://casino.foundercodes.com/demo/betserial/roulett_res.php'));
  //   // final data = jsonDecode(res.body);
  //   final respo = await http.get(
  //     Uri.parse('https://realdeal.games/admin/lastresult.php?gameid=1'),
  //   );
  //   // var
  //   var dat = jsonDecode(respo.body);
  //   var myInt1 = dat['lastwinbetno'];
  //
  //   setState(() {
  //     win= dat['lastwinbetno'];
  //     winno=dat['winnerno'];
  //
  //     // int selecl =win-1;
  //     // selected=num-win==0?0:selecl;
  //     //
  //     // selected2 = myInt1 ;
  //   });
  //
  //
  // }


  int random(int min, int max) {
    return min + Random().nextInt(max - min);
  }

  blueweelspinController wheelSpinController = blueweelspinController();


  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        blueweelspin(
          controller: wheelSpinController,
          pathImage: 'assets/chakra1238.png',
          withWheel: widget.widthc,
          pieces: 37,
          speed: 500,//defuaft is 500
          isShowTextTest: true,
          // offset: 1 / (10 * 6), //random 1/10 pieces defuaft is zero
        ),

      ],
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