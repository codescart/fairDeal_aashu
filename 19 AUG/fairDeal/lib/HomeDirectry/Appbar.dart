import 'dart:convert';
import 'package:fairdeal/HomeDirectry/changePassword.dart';
import 'package:fairdeal/loginwigit/login_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:fairdeal/constant/Apihandler.dart';
import 'package:fairdeal/constant/colorconstant.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';




class customappbar extends StatefulWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  customappbar({Key? key})
      : preferredSize = const Size.fromHeight(40.0),
        super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _customappbarState createState() => _customappbarState();
}

class _customappbarState extends State<customappbar> {
 
@override
  void initState() {
  viewprofile();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    final heights=MediaQuery.of(context).size.height;
    final widths = MediaQuery.of(context).size.height*2;
    return AppBar(
      flexibleSpace:Container(

        decoration: BoxDecoration(
         gradient: LinearGradient(
             begin: Alignment.topLeft,
             end: Alignment(1, 1),
             colors: [
               Color(0xff082e77),
               Color(0xff01134b),

         ])

        ),
      ) ,
      automaticallyImplyLeading: false,
       leading: Center(child:
             Text('Version :1.0.0',
                 style: TextStyle(
             fontSize: 10.0,
            color: Colors.white
             ))),
      title: Row(
        children: [
          Text('For Assument Only',
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.white
          ),),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: (){

              showDialog(
                context: context,
                builder: (BuildContext context) =>changepassword(id:map['id'],
                  name:map['full_name'],
                ),
              );
              },
            child: Container(
             height: 35,
              width: 35,
              decoration: BoxDecoration(
                border: Border.all(width: 2,color:loginborder ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),

              ),
              child: Icon(Icons.lock_outline),
            ),
          ),
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
          Text(map==null?'':'Welcome, '+map['full_name'],
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
          Icon(Icons.circle_rounded,color: Colors.yellow,),
          GradientText(
            map==null?'':
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
          Text( map==null?'':map['wallet'],
            style: TextStyle(
                fontSize: 15.0,
                color: Colors.white
            ),),
        ],
      ),
      leadingWidth: 40.w,
      actions: [
        InkWell(
          onTap: (){
            showDialog<bool>(
              context: context,
              builder: (context) {
                return AlertDialog(
                  backgroundColor: Colors.transparent,
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  shadowColor: Colors.black,
                  content: Container(
                    height: widths/2,
                    width:widths/1.5,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/closegame.jpeg')
                        )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          // width:  widths/4.5,
                        ),
                        SizedBox(
                          // width:  widths/4.5,
                        ),
                        SizedBox(
                          // width:  widths/4.5,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap:(){
                                _logout();
                              },
                              child: Container(

                                height: widths/10,
                                width:widths/7,

                              ),
                            ),
                            SizedBox(
                              width:widths/6,
                            ),

                            InkWell(
                              onTap:(){
                                Navigator.pop(context,false);
                              },
                              child: Container(

                                height: widths/10,
                                width:widths/7,

                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          // width:  widths/4.5,
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: Container(
            height: 20.h,
            width: 45.w,
        decoration: BoxDecoration(
          image: DecorationImage(
            // fit: BoxFit.fill,
            image: AssetImage('assets/cut.jpeg')
          )
        ),

          ),
        )
      ],


    );

  }

  var map;
  Future viewprofile() async {
    final prefs = await SharedPreferences.getInstance();
    final userid=prefs.getString("userId");
    final response = await http.get(
      Uri.parse(Api.baseurl+Api.homeprofile+'user_id=$userid'),
    );
    var data = jsonDecode(response.body);
    print(data);
    print("mmmmmmmmmmmm");
    if (data['error'] == '200') {
      setState(() {
        map =data['data'];
      });
    }
  }


_logout() async {
  final prefs = await SharedPreferences.getInstance();
  final userid=prefs.getString("userId");

  final response = await http.get(
    Uri.parse('https://realdeal.games/admin/index.php/Mobile_app/logout?userid=$userid'),

  );

  var data = jsonDecode(response.body);
  if (data["error"] == "200") {
    // Sound('audio/WelcomeToRealdeal_goodluck.mp3');
    Fluttertoast.showToast(
        msg: data["msg"] ,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        textColor: Colors.white,
        backgroundColor: Colors.green,
        fontSize: 16.0);
    // Navigator.pop(context);
   Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>login_page()));

  } else {
    Fluttertoast.showToast(
        msg: data["msg"] ,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        textColor: Colors.white,
        backgroundColor: Colors.red,
        fontSize: 16.0);

    print("Error");
  }
}

}


