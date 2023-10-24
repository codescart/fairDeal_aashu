import 'package:fairdeal/HomeDirectry/Roulette_timex/Roulette_timexAppbar.dart';
import 'package:flutter/material.dart';


class bluehome extends StatefulWidget {
  const bluehome({Key? key}) : super(key: key);

  @override
  State<bluehome> createState() => _bluehomeState();
}

class _bluehomeState extends State<bluehome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:
    Scaffold(
      appBar: roulette_appbar(),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image:  AssetImage('assets/blue36timerbg.jpg',),fit: BoxFit.fill,
            )
        ),
      ),
    )
    );
  }
}
