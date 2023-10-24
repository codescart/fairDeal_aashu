import 'dart:convert';

import 'package:fairdeal/constant/colorconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:http/http.dart' as http;

class changepassword extends StatefulWidget {
  final id;
  final name;
      changepassword({ required this.id,required this.name });

  @override
  State<changepassword> createState() => _changepasswordState();
}
TextEditingController oldpass = TextEditingController();
TextEditingController newpass = TextEditingController();
TextEditingController confirmpass = TextEditingController();
class _changepasswordState extends State<changepassword> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildChild(context),
    );
  }
  _buildChild(BuildContext context) =>SingleChildScrollView(
    child: Container(
      width: MediaQuery.of(context).size.width*0.6,
      height:MediaQuery.of(context).size.width*0.4,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/change_pass_popup.png'),
        )
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 12.0.h,right: 4.w),
            child: Align(
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  height: 20.h,
                  width: 10.w,
                ),
              ),
            ),
          ),
          SizedBox(height: 40.h,),
          Container(
            width:  MediaQuery.of(context).size.width*0.5,
            child: Row(
              children: [
                GradientText(
                  'Name',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width*0.017,
                  ),
                  colors: [
                    Color(0xfff8cd76),
                    Colors.white,
                    Color(0xfff8cd76),
                  ],
                ),
                Spacer(),
                Container(
                  height: MediaQuery.of(context).size.height*0.1,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color:loginborder ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.black,
                  ),
                  width: MediaQuery.of(context).size.height*0.7,
                  padding: const EdgeInsets.only(left: 5.0, right: 15.0),
                  child:TextFormField(
                    // controller: phone,
                    textInputAction: TextInputAction.next,
                    maxLength: 10,
                    keyboardType: TextInputType.name,
                    textAlignVertical: TextAlignVertical.bottom,
                    style: const TextStyle(color: Colors.white),
                    cursorColor: const Color(0xFF075E54),
                    readOnly: true,
                    decoration: InputDecoration(

                      counterText: "",
                      contentPadding: const EdgeInsets.only(bottom: 13.0,left:20 ),


                      border: InputBorder.none,
                      hintText: widget.name==null?'user name':widget.name,
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h,),
          Container(
            width:  MediaQuery.of(context).size.width*0.5,
            child: Row(
              children: [
                GradientText(
                  'Old Password',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width*0.017,
                  ),
                  colors: [
                    Color(0xfff8cd76),
                    Colors.white,
                    Color(0xfff8cd76),
                  ],
                ),
                Spacer(),
                Container(
                  height: MediaQuery.of(context).size.height*0.1,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color:loginborder ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.black,
                  ),
                  width: MediaQuery.of(context).size.height*0.7,
                  padding: const EdgeInsets.only(left: 5.0, right: 15.0),
                  child:TextFormField(
                     controller: oldpass,
                    textInputAction: TextInputAction.next,
                    maxLength: 10,
                    keyboardType: TextInputType.name,
                    textAlignVertical: TextAlignVertical.bottom,
                    style: const TextStyle(color: Colors.white),
                    cursorColor: const Color(0xFF075E54),

                    decoration: InputDecoration(

                      counterText: "",
                      contentPadding: const EdgeInsets.only(bottom: 13.0,left:20 ),


                      border: InputBorder.none,
                      hintText:'Old Password',
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),
          SizedBox(height: 10.h,),
          Container(
            width:  MediaQuery.of(context).size.width*0.5,
            child: Row(
              children: [
                GradientText(
                  'New Password',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width*0.017,
                  ),
                  colors: [
                    Color(0xfff8cd76),
                    Colors.white,
                    Color(0xfff8cd76),
                  ],
                ),
                Spacer(),
                Container(
                  height: MediaQuery.of(context).size.height*0.1,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color:loginborder ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.black,
                  ),
                  width: MediaQuery.of(context).size.height*0.7,
                  padding:  EdgeInsets.only(left: 5.0, right: 15.0),
                  child:TextFormField(
                    controller: newpass,
                    textInputAction: TextInputAction.next,
                    maxLength: 10,
                    keyboardType: TextInputType.name,
                    textAlignVertical: TextAlignVertical.bottom,
                    style:  TextStyle(color: Colors.white),
                    cursorColor:  Color(0xFF075E54),
                    decoration: InputDecoration(
                      counterText: "",
                      contentPadding:  EdgeInsets.only(bottom: 13.0,left:20 ),
                      border: InputBorder.none,
                      hintText:'New Password',
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h,),
          Container(
            width:  MediaQuery.of(context).size.width*0.5,
            child: Row(
              children: [
                GradientText(
                  'Confirm Password',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width*0.017,
                  ),
                  colors: [
                    Color(0xfff8cd76),
                    Colors.white,
                    Color(0xfff8cd76),
                  ],
                ),
                Spacer(),
                Container(
                  height: MediaQuery.of(context).size.height*0.1,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color:loginborder ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.black,
                  ),
                  width: MediaQuery.of(context).size.height*0.7,
                  padding: const EdgeInsets.only(left: 5.0, right: 15.0),
                  child:TextFormField(
                    controller: confirmpass,
                    textInputAction: TextInputAction.next,
                    maxLength: 10,
                    keyboardType: TextInputType.name,
                    textAlignVertical: TextAlignVertical.bottom,
                    style: const TextStyle(color: Colors.white),
                    cursorColor: const Color(0xFF075E54),

                    decoration: InputDecoration(

                      counterText: "",
                      contentPadding: const EdgeInsets.only(bottom: 13.0,left:20 ),


                      border: InputBorder.none,
                      hintText:'Confirm Password',
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),
          SizedBox(height: 10.h,),
          InkWell(
            onTap: (){
              changepas(oldpass.text,newpass.text,confirmpass.text);
            },
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/btn_sure.png",)
                  )
              ),
              width: 200,
              child:Center(
                child: Text('Submit',
                  style:  GoogleFonts.playfairDisplay( textStyle:TextStyle(
                    fontSize: 16,fontWeight: FontWeight.w900,color: Colors.white,
                  ),
                  ),
                ),
              ),
            ),),
        ],
      ),
    ),
  );


  changepas(
      String oldpass,String newpass,String confirmpass) async {


    final response = await http.post(
      Uri.parse(
        'https://realdeal.games/admin/index.php/Mobile_app/password_change'
          ),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "id": widget.id,
        "old_password": oldpass,
        "new_password": newpass,
        "confirm_password": confirmpass,
      }),
    );

    var data = jsonDecode(response.body);
    if (data["error"] == "200") {
      Fluttertoast.showToast(
          msg: data["msg"] ,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          textColor: Colors.white,
          backgroundColor: Colors.green,
          fontSize: 16.0);
      Navigator.pop(context);

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
