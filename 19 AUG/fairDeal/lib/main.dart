// import 'package:device_preview/device_preview.dart';
import 'dart:ui';

import 'package:fairdeal/Desktop%20view/Desktop_HomeDirectry/Roulette_timex_desktop/Roulette_timex_home.dart';
import 'package:fairdeal/Desktop%20view/loginwigit/login_page.dart';
import 'package:fairdeal/HomeDirectry/testing.dart';
import 'package:fairdeal/loginwigit/login_page.dart';
import 'package:fairdeal/managesize.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([
    SystemUiOverlay.bottom,
  ]);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight
  ]).then((_){
    // DevicePreview(
    //   enabled: !kReleaseMode,
    //   builder: (context) => MyApp(), // Wrap your app
    // );
    // runApp(
    //   DevicePreview(
    //     enabled: !kReleaseMode,
    //     builder: (context) => MyApp(), // Wrap your app
    //   ),
    // );
    runApp(MyApp());
  });
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(720, 1280),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Real Deal',
          // useInheritedMediaQuery: true,
          // locale: DevicePreview.locale(context),
          // builder: DevicePreview.appBuilder,
          theme: ThemeData.light(),
          // // responsve_sc(),ko add krna hai
          home:responsve_sc()
          // spinwheelww()

        );
      },
    );
    //   MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'Real Deal',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //   ),
    //   home: Splash_screen(),
    // );
  }
}

