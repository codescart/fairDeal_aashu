import 'package:fairdeal/constant/Apihandler.dart';
import 'package:fairdeal/constant/colorconstant.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';




class roulette_appbar extends StatefulWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  roulette_appbar({Key? key})
      : preferredSize = const Size.fromHeight(40.0),
        super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _roulette_appbarState createState() => _roulette_appbarState();
}

class _roulette_appbarState extends State<roulette_appbar> {




  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace:Container(

        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(1, 1),
                colors: [
                  Color(0xff056e0d),
                  Color(0xff0b4715),

                ])

        ),
      ) ,
      automaticallyImplyLeading: false,
      leading: InkWell(
        onTap: (){
          Navigator.pop(context);
        },
        child: Center(child: Text('LOBBY',
            style: TextStyle(
            fontSize: 10.0,
            color: Colors.white
        )
        )),
      ),
      title: Row(
        children: [
          SizedBox(
            width: 10,
          ),


          Container(
            height: 35,
            width: 2,
            decoration: BoxDecoration(

                image: DecorationImage(
                  image: AssetImage('assets/NormalRoulette.png',),fit: BoxFit.fill,
                )

            ),

          ),
          SizedBox(
            width: 10,
          ),
          Text('Welcome, qwerttyyy',
            style: TextStyle(
                fontSize: 15.0,
                color: Colors.white
            ),),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 35,
            width: 2,
            decoration: BoxDecoration(

                image: DecorationImage(
                  image: AssetImage('assets/NormalRoulette.png',),fit: BoxFit.fill,
                )

            ),

          ),
          SizedBox(
            width: 10,
          ),

        ],
      ),
      leadingWidth: 60,
      actions: [
        Icon(Icons.circle_rounded,color: Colors.yellow,),
        Center(
          child: GradientText(
            'BALANCE :',
            style: TextStyle(
              fontSize: 15.0,
            ),
            colors: [
              Color(0xffe4e20b),
              Colors.white,
              Color(0xffe4e20b),
            ],
          ),
        ),
        Center(
          child: Text('123333',
            style: TextStyle(
                fontSize: 15.0,
                color: Colors.white
            ),),
        ),
      ],


    );

  }

}


