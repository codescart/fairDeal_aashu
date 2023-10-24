import 'dart:math';

import 'package:fairdeal/constant/chota_rollet_dependency.dart';
import 'package:fairdeal/testing/test3.dart';
import 'package:flutter/material.dart';



class spinwheelww extends StatefulWidget {




  @override
  State<spinwheelww> createState() => _spinwheelwwState();
}

class _spinwheelwwState extends State<spinwheelww> {



  WheelSpinController wheelSpinController = WheelSpinController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(

          title: Text('wwwww'),
        ),
        body: Center(

          child: Column(
            children: [
              WheelSpin(
                controller: wheelSpinController,
                pathImage: 'assets/orgtkorko.png',
                withWheel: 200,
                pieces: 37,
                speed: 500,//defuaft is 500
                isShowTextTest: true,
                offset: 1 / (10 * 6), //random 1/10 pieces defuaft is zero
              ),
              TextButton(
                  onPressed: () {
                    wheelSpinController.startWheel();
                  },
                  child: Text("Start")),
              TextButton(
                  onPressed: () {
                    wheelSpinController.stopWheel(36);
                  },
                  child: Text("Stop"))
            ],
          ),
        ));
  }
}