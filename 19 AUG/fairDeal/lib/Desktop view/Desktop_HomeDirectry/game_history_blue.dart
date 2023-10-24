import 'dart:convert';
import 'package:fairdeal/constant/Apihandler.dart';
import 'package:fairdeal/constant/colorconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class gameHistory_blue extends StatefulWidget {
  const gameHistory_blue({Key? key}) : super(key: key);

  @override
  State<gameHistory_blue> createState() => _gameHistory_blueState();
}

class _gameHistory_blueState extends State<gameHistory_blue> {
  @override
  void initState() {
    viewprofile();
    super.initState();
  }

  var map;
  Future viewprofile() async {
    final prefs = await SharedPreferences.getInstance();
    final userid=prefs.getString("userId");
    print(userid);
    print('wertyuiop[p;lkjtdvfbgnh ');
    final response = await http.get(
      Uri.parse(Api.baseurl+Api.historyview+'user_id=$userid&gameid=$id'),
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
  var id= '1';

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
  _buildChild(BuildContext context) =>Container(
    width:  MediaQuery.of(context).size.width*0.8,
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage('assets/bg_mail.png'),
      ),
    ),
    child: Column(
      children: [
        Padding(
          padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*0.02,
              right: MediaQuery.of(context).size.width*0.02,
              bottom: MediaQuery.of(context).size.width*0.02
          ),

          child: Row(
            children: [
              Text('Betting History ',style: TextStyle(
                  fontSize:MediaQuery.of(context).size.width*0.03,
                  color: Colors.black
              )),
              Spacer(),


              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon(Icons.close,color: Colors.black,
                  size: MediaQuery.of(context).size.width*0.03,),
              )




            ],
          ),

        ),
        Container(
          height: 290.h,
          child: ListView(
            children: [
              Padding(
                padding:  EdgeInsets.all(MediaQuery.of(context).size.width*0.02),
                child: Container(
                  height: 120,
                  width: 250,
                  decoration: BoxDecoration(
                    border: Border.all(width: 3,color:loginborder ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: loginbg.withOpacity(0.3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      children: [
                        Row(
                          children: [
                            Text('Game Name :',style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white
                            )),
                            Spacer(),
                            Text(map==null?'':map['gamesname'],style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white
                            )),


                          ],
                        ),
                        Divider(
                          thickness: 1.5,color: Colors.white,
                        ),
                        Row(
                          children: [
                            Text('Player Name :',style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white
                            )),
                            Spacer(),
                            Text(map==null?'':map['username'],style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white
                            )),


                          ],
                        ),
                        Divider(
                          thickness: 1.5,color: Colors.white,
                        ),
                        Row(
                          children: [
                            Text('Game ID :',style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white
                            )),
                            Spacer(),
                            Text(map==null?'':map['gameno'],style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white
                            )),


                          ],
                        ),
                      ],
                    ),
                  ),

                ),
              ),


              Column(
                children: [
                  Container(
                    height: 30,
                    width: 450,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3,color:loginborder ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: loginbg.withOpacity(0.3),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width:35,
                          child: Text('NO. :',style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white
                          )),
                        ),
                        VerticalDivider(
                          thickness: 1.5,
                          color: Colors.white,
                        ),
                        Container(
                          width:150,
                          child: Text('Hand ID :',style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white
                          )),
                        ),
                        VerticalDivider(
                          thickness: 1.5,
                          color: Colors.white,
                        ),
                        Container(
                          width:115,
                          child: Text('Ball Position :',style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white
                          )),
                        ),
                        VerticalDivider(
                          thickness: 1.5,
                          color: Colors.white,
                        ),
                        Container(
                          width:30,
                          child: Text('Play :',style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white
                          )),
                        ),
                        VerticalDivider(
                          thickness: 1.5,
                          color: Colors.white,
                        ),
                        Container(
                          width:30,
                          child: Text('Won :',style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white
                          )),
                        ),
                      ],
                    ),


                  ),
                  Container(
                    height: 200.h,
                    width: 450,
                    child: FutureBuilder<List<timexhistory>>(
                      future: ert(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        else if (snapshot.hasError) {
                          return Center(
                            child: Text('Error: ${snapshot.error}'),
                          );
                        }
                        else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                          return Center(
                            child: Text('No data available'),
                          );
                        }
                        else {
                          return ListView.builder(
                            itemCount: snapshot.data!.length,

                            itemBuilder: (context, index) {
                              return  Container(

                                decoration: BoxDecoration(
                                  border: Border.all(width: 2,color:border ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(0),
                                  ),
                                  color: loginbg.withOpacity(0.3),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      width:35,
                                      child: Text('NO. :',style: TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.white
                                      )),
                                    ),
                                    VerticalDivider(
                                      thickness: 1.5,
                                      color: Colors.white,
                                    ),
                                    Container(
                                      width:150,
                                      child: Text("${snapshot.data![index].amount}",
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.white
                                          )),
                                    ),
                                    VerticalDivider(
                                      thickness: 1.5,
                                      color: Colors.white,
                                    ),
                                    Container(
                                      width:115,
                                      child: Text("${snapshot.data![index].bet}",style: TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.white
                                      )),
                                    ),
                                    VerticalDivider(
                                      thickness: 1.5,
                                      color: Colors.white,
                                    ),
                                    Container(
                                      width:30,
                                      child: Text("${snapshot.data![index].v_id}",style: TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.white
                                      )),
                                    ),
                                    VerticalDivider(
                                      thickness: 1.5,
                                      color: Colors.white,
                                    ),
                                    Container(
                                      width:30,
                                      child: Text(snapshot.data![index].winstatus=='1'?"win":'lose',style: TextStyle(
                                          fontSize: 15.0,
                                          color:snapshot.data![index].winstatus=='1'?
                                          Colors.green:Colors.red
                                      )),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),



      ],
    ),
  );
  Future<List<timexhistory>> ert() async{
    final prefs = await SharedPreferences.getInstance();
    final userid=prefs.getString("userId");
    final response = await http.get(
      Uri.parse('https://realdeal.games/admin/index.php/Mobile_app/bet_history?user_id=$userid&gameid=1'),
    );
    print('wwwwwwwwwwwwwwwwwwww');
    final jsond = json.decode(response.body)['data'];
    print(jsond);


    List<timexhistory> allround = [];
    for (var o in jsond)  {
      timexhistory al = timexhistory(
        o["id"],
        o["v_id"],
        o["bet"],
        o["amount"],
        o["gameno"],
        o["winstatus"],
      );

      allround.add(al);
    }
    return allround;
  }



}

class timexhistory {
  String? id;
  String? v_id;
  String? bet;
  String? amount;
  String? gameno;
  String? winstatus;




  timexhistory(
      this.id,
      this.v_id,
      this.bet,
      this.amount,
      this.gameno,
      this.winstatus,
      );






}
