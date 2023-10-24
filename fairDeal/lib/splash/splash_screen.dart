import 'dart:async';
import 'package:fairdeal/HomeDirectry/home_page.dart';
import 'package:fairdeal/constant/shimeer.dart';
import 'package:fairdeal/loginwigit/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Splash_screen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<Splash_screen> {
  double _progress = 0.0;
  int _duration = 10; // Duration in seconds
  Timer? _timer;
  bool _isTimerComplete = false;

  @override
  void initState() {
    super.initState();
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> login_page()));
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
      SystemUiOverlay.bottom,
    ]);
    // startTimer();
    // sharedfunction();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void startTimer() {
    const interval = Duration(seconds: 1);
    _timer = Timer.periodic(interval, (Timer timer) {
      setState(() {
        _progress += 1.0 / _duration;

        if (_progress >= 1.0) {
          _timer?.cancel();
          _isTimerComplete = true;
        }
      });
    });
  }


  sharedfunction()async{
    final prefs = await SharedPreferences.getInstance();
    final userid=prefs.getString("userId")??'0';


    userid !='0'?
    Timer(Duration(seconds: 11),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => home_page()
            )
        )
    ): Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => login_page()
            )
        )
    );


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child:Center(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(

                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image:  AssetImage('assets/splash.png',)
                  )
              ),
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Shimmer.fromColors(
                      baseColor: Colors.grey[500]!,
                      highlightColor: Colors.grey[100]!,
                      period: Duration(milliseconds: 1000),
                      child: Text(
                        'Connecting...',
                          style: TextStyle(fontSize: 30,
                              fontWeight: FontWeight.w900,color: Colors.white)
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                    color: Colors.white,
                      width: 1,
                    )
                    ),
                    height: 10,
                    width: 250,
                    child: LinearProgressIndicator(
                      value: _progress,
                      backgroundColor: Colors.grey[200],
                      valueColor: _isTimerComplete?AlwaysStoppedAnimation<Color>(Colors.green):
                      AlwaysStoppedAnimation<Color>(Colors.yellowAccent)
                    ),
                  ),
                  Container(
                  height: 100,
                   width: 100,
                   decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                     image: DecorationImage(
                       fit: BoxFit.fill,
                       image:  AssetImage('assets/loading.gif',)
                          )
                           ),
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}
