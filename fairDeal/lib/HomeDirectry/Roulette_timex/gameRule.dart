import 'package:flutter/material.dart';

class gamerule extends StatefulWidget {
  const gamerule({Key? key}) : super(key: key);

  @override
  State<gamerule> createState() => _gameruleState();
}

class _gameruleState extends State<gamerule> {
  @override
  Widget build(BuildContext context) {
    return    SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                image:  AssetImage('assets/gamerule.png',),fit: BoxFit.fill,
              )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

             IconButton(onPressed: (){
               Navigator.pop(context);
             },
                 icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
            ],
          ),
        ),
      ),
    );
  }
}
