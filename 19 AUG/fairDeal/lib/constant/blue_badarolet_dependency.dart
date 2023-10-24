import 'dart:math';

import 'package:flutter/material.dart';

class BlueweelspinController {
  late void Function() startWheel;
  late void Function(int index) stopWheel;
}

class blueweelspin extends StatefulWidget {
  final BlueweelspinController controller;
  final String pathImage;
  final double withWheel;
  final int pieces;
  final double offset;
  final bool isShowTextTest;
  final int speed;
  const blueweelspin(
      {Key? key,
        required this.controller,
        required this.pathImage,
        required this.withWheel,
        this.offset = 0,
        required this.pieces,
        this.isShowTextTest = false,
        this.speed = 500})
      : super(key: key);

  @override
  State<blueweelspin> createState() => _blueweelspinState(controller);
}

class _blueweelspinState extends State<blueweelspin> with TickerProviderStateMixin {
  _blueweelspinState(BlueweelspinController _controller) {
    _controller.startWheel = startWheel;
    _controller.stopWheel = stopWheel;
  }
  final Tween<double> turnsTween = Tween<double>(
    begin: 1,
    end: 0,
  );
  late final AnimationController _controllerStart = AnimationController(
    duration: Duration(milliseconds: widget.speed),
    vsync: this,
  );
  late final AnimationController _controllerFinish = AnimationController(
    duration: Duration(milliseconds: widget.speed * 2),
    vsync: this,
  );

  late final AnimationController _controllerMiddle = AnimationController(
    duration: Duration(milliseconds: widget.speed),
    vsync: this,
  );

  late final Animation<double> _animationFinish = CurvedAnimation(
    parent: turnsTween.animate(_controllerFinish),
    curve: Curves.linear,
  );
  late final Animation<double> _animationStart = CurvedAnimation(
    parent: turnsTween.animate(_controllerStart),
    curve: Curves.linear,
  );

  late final Animation<double> _animationMiddle = CurvedAnimation(
    parent: turnsTween.animate(_controllerMiddle),
    curve: Curves.linear,
  );

  int statusWheel = 0;

  bool isNhanKetQua = false;
  int indexResuft = 0;
  double angle = 0;
  int pieces = 0;
  List<String> items = [
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
  ].reversed.toList();


  bool isStart = false;
  @override
  void initState() {
    super.initState();
    pieces = widget.pieces;

    _controllerStart.addStatusListener((status) {
      if (!isStart) return;
      if (status == AnimationStatus.completed) {
        if (!isNhanKetQua) {
          _controllerStart.reset();
          _controllerStart.forward();
        } else {
          setState(() {
            statusWheel = 1;
            _controllerStart.stop();

            _controllerMiddle.forward();
          });
        }
      }
    });
    _controllerMiddle.addListener(() {
      if (!isStart) return;
      double radiaus = indexResuft / pieces + widget.offset;
      if (_controllerMiddle.value >= radiaus) {
        setState(() {
          statusWheel = 2;
          angle = radiaus * 2 * pi;
          _controllerMiddle.stop();
          _controllerFinish.forward();
        });
      }
    });
  }

  reset() {
    setState(() {});
    isStart = false;
    statusWheel = 0;
    angle = 0;
    _controllerMiddle.reset();
    _controllerFinish.reset();
    _controllerStart.reset();

    isNhanKetQua = false;
  }

  void nhanketqua(int index) {
    isNhanKetQua = true;
    indexResuft = index;
  }

  Animation<double> getAnimation() {
    if (statusWheel == 0) return _animationStart;
    if (statusWheel == 1) return _animationMiddle;
    return _animationFinish;
    return _animationStart;
  }

  @override
  void dispose() {
    if (_controllerStart.isAnimating) _controllerStart.dispose();
    if (_controllerFinish.isAnimating) _controllerFinish.dispose();
    if (_controllerMiddle.isAnimating) _controllerMiddle.dispose();
    super.dispose();
  }

  void startWheel() {
    reset();
    isStart = true;
    _controllerStart.forward();
  }

  void stopWheel(int index) {
    nhanketqua(index);
  }

  createLabels() {
    List<Widget> lsText = [];
    for (int i = 0; i < items.length; i++) {
      lsText.add(Transform.rotate(
        angle: -i * pi * 2 / widget.pieces,
        child: SizedBox(
          width: widget.withWheel,
          height: widget.withWheel,
          child: Stack(
            children: [
              Positioned(

                  left: widget.withWheel / 2.30,
                  top: widget.withWheel / 6.5,
                  child: Center(
                    child: Text(items[i]=='0'?'◍':'', style: TextStyle(
                        fontWeight: FontWeight.w900,color: Colors.white,fontSize: 14
                    ),),
                  )),
            ],
          ),
        ),
      ));
    }
    return SizedBox(
      width: widget.withWheel,
      height: widget.withWheel,
      child: Center(
        child: Stack(
          children: lsText,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: getAnimation(),
      child: Transform.rotate(
        angle: angle,
        child: Stack(
          children: [
            // Image.asset(
            //   widget.pathImage,
            //   fit: BoxFit.cover,
            //   width: widget.withWheel,
            // ),
            Visibility(visible: widget.isShowTextTest, child: createLabels()),
          ],
        ),
      ),
    );
  }
}
