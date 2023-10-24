import 'dart:convert';


import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class gridboard extends StatefulWidget {
  final double widths;
  final double heights;
  gridboard({Key? key, required this.widths, required this.heights}) : super(key: key);
  @override
  State<gridboard> createState() => _gridboardState();
}

class _gridboardState extends State<gridboard> {
  int selectedCard = -1;

  List<int> data= [34,35,36,31,32,33,28,29,30,25,26,27,22,23,24,19,20,21,16,17,18,13,14,15,10,11,12,7,8,9,4,5,6,1,2,3];


  final red = {1, 3, 5, 7, 9, 12, 14, 16, 18, 19, 21, 23, 25, 27, 30, 32, 34, 36};
  static const List batval= <String>['1','5','10','50','100','500','1000','5000'];
  static const List colord= <Color>[Color(0xff009316), Color(0xff0741d0), Color(0xff6c0303), Color(0xffd9b149), Color(0xff069a7f), Color(0xffbb1a82),

    Color(0xff9d4303), Color(0xff6581f8)
  ];
  static const List batvalt= <String>['1','2','5','10','20','50', '100','200','500','1000','2000','5000'];

  static const List batvals= <String>['assets/1_0.png','assets/2_0.png','assets/5_0.png','assets/10_0.png','assets/20_0.png','assets/50_0.png','assets/100_0.png','assets/200_0.png','assets/500_0.png','assets/1000_0.png','assets/2000_0.png','assets/5000_0.png'];

  @override
  void initState() {

    // TODO: implement initState
    super.initState();
  }

  int v1=55;
  int v2=55;
  int v3=55;
  int v4=55;
  int v5=55;
  int v6=55;
  int v7=55;
  int v8=55;
  int v9=55;
  int v10=55;
  int v11=55;
  int v12=55;
  int v13=55;
  int v14=55;
  int v15=55;
  int v16=55;
  int v17=55;
  int v18=55;



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  InkWell(
                    onTap: (){
                      fristtab();
                    },
                    child: Container(
                      height: widget.heights*0.18,
                      width: widget.widths*0.09,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xffffffff),
                            width: 1,
                          )
                      ),
                      child: Center(child: Text('2 to 1',style: GoogleFonts.playfairDisplay( textStyle:TextStyle(
                          fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white
                      ),
                      ),)),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      secondtab();
                    },
                    child: Container(
                      height: widget.heights*0.18,
                      width: widget.widths*0.09,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xffffffff),
                            width: 1,
                          )
                      ),
                      child: Center(child: Text('2 to 1',style: GoogleFonts.playfairDisplay( textStyle:TextStyle(
                          fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white
                      ),
                      ),)),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      thirdtab();
                    },
                    child: Container(
                      height: widget.heights*0.18,
                      width: widget.widths*0.09,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xffffffff),
                            width: 1,
                          )
                      ),
                      child: Center(child: Text('2 to 1',style: GoogleFonts.playfairDisplay( textStyle:TextStyle(
                          fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white
                      ),
                      ),)),
                    ),
                  ),

                ],
              ),
            ),


            Container(
              height: 130,
              width: 520,
              decoration: BoxDecoration(

                  color: Colors.yellowAccent.withOpacity(0.5),

                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/16.png')
                  )
              ),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,

                  itemBuilder: (BuildContext context, int index) {

                    return Container(

                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                            color:v1==data[index]? Color(0xffde7b35):
                            v2==data[index]? Color(0xffde7b35):
                            v3==data[index]? Color(0xffde7b35):
                            v4==data[index]? Color(0xffde7b35):
                            v5==data[index]? Color(0xffde7b35):
                            v6==data[index]? Color(0xffde7b35):
                            v7==data[index]? Color(0xffde7b35):
                            v8==data[index]? Color(0xffde7b35):
                            v9==data[index]? Color(0xffde7b35):
                            v10==data[index]? Color(0xffde7b35):
                            v11==data[index]? Color(0xffde7b35):
                            v12==data[index]? Color(0xffde7b35):
                            v13==data[index]? Color(0xffde7b35):
                            v14==data[index]? Color(0xffde7b35):
                            v15==data[index]? Color(0xffde7b35):
                            v16==data[index]? Color(0xffde7b35):
                            v17==data[index]? Color(0xffde7b35):
                            v18==data[index]? Color(0xffde7b35):
                            Colors.orange,
                            width: 1.5,
                          )
                      ),
                      child: Stack(
                        children: [
                          data[index]== 35?Text(''):data[index]== 36?Text(''):data[index]== 34?Text(''):
                          data[index]== 33?Text(''):data[index]== 30?Text(''):data[index]== 27?Text(''):
                          data[index]== 24?Text(''):data[index]== 21?Text(''):data[index]== 18?Text(''):
                          data[index]== 15?Text(''):data[index]== 12?Text(''):data[index]== 9?Text(''):
                          data[index]== 6?Text(''):data[index]== 3?Text(''):
                          Positioned(
                              bottom:-12,
                              left: -10,
                              child: InkWell(
                                  onTap: (){

                                    setclr();
                                    setState(() {


                                      selectedCard=index;
                                      final m1=selectedCard-3;
                                      final n1=data[selectedCard]+1;

                                      v1=data[selectedCard];
                                      v2=n1;
                                      v3=data[m1];
                                      v4=data[m1]+1;



                                    });
                                  },
                                  child: Icon(Icons.account_circle))),
                          data[index]== 35?Text(''):data[index]== 36?Text(''):data[index]== 34?Text(''):
                          data[index]== 33?Text(''):data[index]== 30?Text(''):data[index]== 27?Text(''):
                          data[index]== 24?Text(''):data[index]== 21?Text(''):data[index]== 18?Text(''):
                          data[index]== 15?Text(''):data[index]== 12?Text(''):data[index]== 9?Text(''):
                          data[index]== 34?Text(''):data[index]== 31?Text(''):data[index]== 28?Text(''):
                          data[index]== 22?Text(''):data[index]== 19?Text(''):data[index]== 16?Text(''):
                          data[index]== 13?Text(''):data[index]== 10?Text(''):data[index]== 7?Text(''):
                          data[index]== 6?Text(''):data[index]== 3?Text(''):
                          data[index]== 4?Text(''):data[index]== 25?Text(''):data[index]== 1?Text(''):
                          Positioned(
                              top:-15,
                              left: -10,
                              child: InkWell(
                                  onTap: (){

                                    setclr();
                                    setState(() {


                                      selectedCard=index;
                                      final m1=selectedCard-3;
                                      final n1=data[selectedCard]+1;

                                      v1=data[selectedCard];
                                      v2=n1;
                                      v3=data[m1];
                                      v4=data[m1]+1;



                                    });
                                  },
                                  child: Icon(Icons.account_circle))),


                          data[index]== 34?Text(''):data[index]== 31?Text(''):data[index]== 28?Text(''):
                          data[index]== 16?Text(''):data[index]== 13?Text(''):data[index]== 10?Text(''):
                          data[index]== 7?Text(''):data[index]== 4?Text(''):data[index]== 1?Text(''):
                          Positioned(
                              top:-15,
                              right: -10,
                              child: InkWell(
                                  onTap: (){

                                    setclr();
                                    setState(() {


                                      selectedCard=index;
                                      final m1=selectedCard-3;
                                      final n1=data[selectedCard]+1;

                                      v1=data[selectedCard];
                                      v2=n1;
                                      v3=data[m1];
                                      v4=data[m1]+1;



                                    });
                                  },
                                  child: Icon(Icons.account_circle))),
                          data[index]== 36?Text(''):data[index]== 33?Text(''):data[index]== 30?Text(''):
                          data[index]== 27?Text(''):data[index]== 24?Text(''):data[index]== 21?Text(''):
                          data[index]== 18?Text(''):data[index]== 15?Text(''):data[index]== 12?Text(''):
                          data[index]== 9?Text(''):data[index]== 6?Text(''):data[index]== 3?Text(''):
                          Positioned(
                              bottom:-15,
                              right: -10,
                              child: InkWell(
                                  onTap: (){

                                    setclr();
                                    setState(() {


                                      selectedCard=index;
                                      final m1=selectedCard-3;
                                      final n1=data[selectedCard]+1;

                                      v1=data[selectedCard];
                                      v2=n1;
                                      v3=data[m1];
                                      v4=data[m1]+1;



                                    });
                                  },
                                  child: Icon(Icons.account_circle))),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              InkWell(
                                onTap: (){
                                  setclr();
                                  setState(() {
                                    selectedCard=index;
                                    v1=data[selectedCard];
                                    v2=data[selectedCard+3];
                                    print('ttttttttttttttttt');
                                    print('red');
                                    print(v1);
                                    print(v2);

                                  });
                                },
                                child: RotatedBox(

                                    quarterTurns: 45,
                                    child: Text('|',style: TextStyle(color: Colors.red),)),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                      onTap:(){
                                        selectedCard=index;
                                        v1=data[selectedCard];
                                        v2=data[selectedCard-3];
                                        print('qqqqqqqqqqqqqqqqqqqqqqqqqwwwww');
                                        print(v1);
                                        print(v2);
                                      },
                                      child: Text('|',style: TextStyle(color: Colors.red),)),
                                  InkWell(
                                    onTap:(){
                                      print('jjjjjj');
                                      print(data[index].toString());
                                      v1=data[index];

                                    },
                                    child: Container(
                                      // margin: EdgeInsets.all(2),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.transparent,
                                        // data[index]==1? Color(0xffb20909)
                                        //     :data[index]== 3? Color(0xffb20909) :data[index]== 5? Color(0xffb20909) :data[index]== 7? Color(0xffb20909) :data[index]== 9? Color(0xffb20909) :data[index]== 12? Color(0xffb20909) :data[index]== 14? Color(0xffb20909) :data[index]== 16? Color(0xffb20909) :data[index]== 18? Color(0xffb20909) :data[index]== 19? Color(0xffb20909) :data[index]== 21? Color(0xffb20909) :data[index]== 23? Color(0xffb20909) :data[index]== 25? Color(0xffb20909) :data[index]== 27? Color(0xffb20909) :data[index]== 30? Color(0xffb20909) :data[index]== 32? Color(0xffb20909) :data[index]== 34? Color(0xffb20909) :data[index]== 36? Color(0xffb20909):Colors.black,
                                        radius: 16,
                                        // Text(data[index].toString(), style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold, color: Colors.transparent),),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                      onTap:(){
                                        selectedCard=index;
                                        v1=selectedCard;
                                        v2=selectedCard-1;
                                        print('qqqqqqqqqqqqqqqqqqqqqqqqqwwwww');
                                        print(v1);
                                        print(v2);
                                      },
                                      child: Text('|')),

                                ],
                              ),
                              InkWell(
                                onTap:(){
                                  selectedCard=index;
                                  v1=data[selectedCard];
                                  v2=data[selectedCard+1];
                                  print('qqqqqqqqqqqqqqqqqqqqqqqqqwwwww');
                                  print(v1);
                                  print(v2);
                                },
                                child: RotatedBox(

                                    quarterTurns: 45,
                                    child: Text('|',style: TextStyle(color: Colors.teal),)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ) ;
                  }),
            ),
            // InkWell(
            //   onTap: (){ },
            //   child: Container(
            //
            //     height: widget.heights*0.56,
            //     width: widget.widths*0.15,
            //     decoration: BoxDecoration(
            //         image: DecorationImage(
            //           image: AssetImage('assets/mandir.png'),
            //         )
            //     ),
            //     // child:  CircleAvatar(
            //     //   backgroundColor: Colors.green,
            //     //   radius: 2,
            //     //   child:
            //     //   Text(
            //     //     0.toString(),
            //     //     style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
            //     // ),
            //     // child: Container(
            //     //   height: 2,
            //     //   width: 2,
            //     //   decoration: BoxDecoration(
            //     //     color: Colors.green,
            //     //     shape: BoxShape.circle
            //     //   ),
            //     //     child:
            //     //     Center(
            //     //       child: Text(
            //     //         0.toString(),
            //     //         style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
            //     //     ),
            //     //
            //     // ),
            //   ),
            // ),
          ],
        ),
        Container(
          padding: EdgeInsets.only(left: widget.widths*0.2,),
          width:
          widget.widths*2.20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Container(
              //    height: widget.heights*0.20,
              //    width: widget.widths*0.1,),
              InkWell(
                onTap: (){
                  thirdtwelve();
                },
                child: Container(
                  width: widget.widths*0.32,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffffffff),
                        width: 1,
                      )
                  ),
                  child: Center(child: Text('3rd 12',style: GoogleFonts.playfairDisplay( textStyle:TextStyle(
                      fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white
                  ),
                  ),)),
                ),
              ),
              InkWell(
                onTap: (){
                  secondtwelve();
                },
                child: Container(
                  width: widget.widths*0.32,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffffffff),
                        width: 1,
                      )
                  ),
                  child: Center(child: Text('2nd 12',style: GoogleFonts.playfairDisplay( textStyle:TextStyle(
                      fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white
                  ),
                  ),
                  )
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  firsttwelve();
                },
                child: Container(
                  width: widget.widths*0.32,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffffffff),
                        width: 1,
                      )
                  ),
                  child: Center(child: Text('1st 12',style: GoogleFonts.playfairDisplay( textStyle:TextStyle(
                      fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white
                  ),
                  ),)),
                ),
              ),

            ],
          ),
        ),


        Container(
          width: widget.widths*2.20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Container(
              //   height: widget.heights*0.15,
              //   width: widget.widths*0.2,),
              InkWell(
                onTap: (){
                  ninteentothirtysix();
                },
                child: Container(
                  height: widget.heights*0.15,
                  width: widget.widths*0.2,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffffffff),
                        width: 1,
                      )
                  ),
                  child: Center(child: Text('19 to 36',style: GoogleFonts.playfairDisplay( textStyle:TextStyle(
                      fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white
                  ),
                  ),
                  )
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  odd();
                },
                child: Container(
                  height: widget.heights*0.15,
                  width: widget.widths*0.21,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffffffff),
                        width: 1,
                      )
                  ),
                  child: Center(child: Text('ODD',style: GoogleFonts.playfairDisplay( textStyle:TextStyle(
                      fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white
                  ),
                  ),
                  )
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  red_color();
                },
                child: Container(
                  height: widget.heights*0.15,
                  width: widget.widths*0.21,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffffffff),
                        width: 1,
                      )
                  ),
                  child: Image.asset("assets/diamond.png",color: Colors.red,fit: BoxFit.fill,),
                ),
              ),
              InkWell(
                onTap: (){
                  black_color();
                },
                child: Container(
                  height: widget.heights*0.15,
                  width: widget.widths*0.21,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffffffff),
                        width: 1,
                      )
                  ),
                  child: Image.asset("assets/diamond.png",color: Colors.black,fit: BoxFit.fill,),
                ),
              ),
              InkWell(
                onTap: (){
                  even();
                },
                child: Container(
                  height: widget.heights*0.15,
                  width: widget.widths*0.21,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffffffff),
                        width: 1,
                      )
                  ),
                  child: Center(child: Text('EVEN',style: GoogleFonts.playfairDisplay( textStyle:TextStyle(
                      fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white
                  ),
                  ),
                  )
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  onetoninteenx();
                },
                child: Container(
                  height: widget.heights*0.15,
                  width: widget.widths*0.21,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffffffff),
                        width: 1,
                      )
                  ),
                  child: Center(child: Text('01 to 18',style: GoogleFonts.playfairDisplay( textStyle:TextStyle(
                      fontSize: 12,fontWeight: FontWeight.bold,color: Colors.white
                  ),
                  ),
                  )
                  ),
                ),
              ),

            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 58.0,top: 10),
          child: Container(
            height: 30,
            width: widget.widths*1.55,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: batval.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: (){

                      setState(() {
                        // batam= batval[index].toString();
                      });

                      // Betregisteredfunroulette("Andar",batval[index].toString());
                    },
                    child: Padding(
                      padding: EdgeInsets.all(2),
                      child: Container(


                        child: CircleAvatar(
                          // backgroundColor: colord[index],
                          radius: 20,
                          child: Image.asset(batvals[index].toString()),
                        ),
                      ),
                    ),
                  );
                }
            ),
          ),
        ),


      ],

    );
  }

  setclr(){
    setState(() {
      v1=55;
      v2=55;
      v3=55;
      v4=55;
      v5=55;
      v6=55;
      v7=55;
      v8=55;
      v9=55;
      v10=55;
      v11=55;
      v12=55;
      v13=55;
      v14=55;
      v15=55;
      v16=55;
      v17=55;
      v18=55;
    });
  }

  fristtab() {
    print('pppp');
    setclr();
    setState(() {
      v1=34;
      v2=31;
      v3=28;
      v4=25;
      v5=22;
      v6=19;
      v7=16;
      v8=13;
      v9=10;
      v10=7;
      v11=4;
      v12=1;

    });
  }
  secondtab() {
    setclr();
    print('pppp');
    setState(() {
      v1=35;
      v2=32;
      v3=29;
      v4=26;
      v5=23;
      v6=20;
      v7=17;
      v8=14;
      v9=11;
      v10=8;
      v11=5;
      v12=2;

    });
  }
  thirdtab() {
    setclr();
    print('pppp');
    setState(() {
      v1=36;
      v2=33;
      v3=30;
      v4=27;
      v5=24;
      v6=21;
      v7=18;
      v8=15;
      v9=12;
      v10=9;
      v11=6;
      v12=3;
    });
  }

  thirdtwelve() {
    setclr();
    print('pppp');
    setState(() {
      v1=27;
      v2=28;
      v3=29;
      v4=30;
      v5=31;
      v6=32;
      v7=33;
      v8=34;
      v9=35;
      v10=36;
      v11=25;
      v12=26;
    });
  }
  secondtwelve() {
    setclr();
    print('pppp');
    setState(() {
      v1=13;
      v2=14;
      v3=15;
      v4=16;
      v5=17;
      v6=18;
      v7=19;
      v8=20;
      v9=21;
      v10=22;
      v11=23;
      v12=24;
    });
  }
  firsttwelve() {
    setclr();
    print('pppp');
    setState(() {
      v1=1;
      v2=2;
      v3=3;
      v4=4;
      v5=5;
      v6=6;
      v7=7;
      v8=8;
      v9=9;
      v10=10;
      v11=11;
      v12=12;
    });
  }


  ninteentothirtysix() {
    setclr();
    print('pppp');
    setState(() {
      v1=19;
      v2=20;
      v3=21;
      v4=22;
      v5=23;
      v6=24;
      v7=25;
      v8=26;
      v9=27;
      v10=28;
      v11=29;
      v12=30;
      v13=31;
      v14=32;
      v15=33;
      v16=34;
      v17=35;
      v18=36;
    });
  }
  onetoninteenx() {
    setclr();
    print('pppp');
    setState(() {
      v1=1;
      v2=2;
      v3=3;
      v4=4;
      v5=5;
      v6=6;
      v7=7;
      v8=8;
      v9=9;
      v10=10;
      v11=11;
      v12=12;
      v13=13;
      v14=15;
      v15=16;
      v16=17;
      v17=18;
      v18=14;


    });
  }

  red_color() {
    setclr();
    setState(() {
      v1=1;
      v2=3;
      v3=5;
      v4=7;
      v5=9;
      v6=12;
      v7=14;
      v8=16;
      v9=18;
      v10=19;
      v11=21;
      v12=23;
      v13=25;
      v14=27;
      v15=30;
      v16=34;
      v17=36;
      v18=32;


    });
  }

  black_color() {
    setclr();
    setState(() {
      v1=2;
      v2=4;
      v3=6;
      v4=8;
      v5=10;
      v6=11;
      v7=13;
      v8=15;
      v9=17;
      v10=20;
      v11=22;
      v12=24;
      v13=26;
      v14=28;
      v15=29;
      v16=31;
      v17=33;
      v18=35;


    });
  }


  odd() {
    setclr();
    setState(() {
      v1=1;
      v2=3;
      v3=5;
      v4=7;
      v5=9;
      v6=11;
      v7=13;
      v8=15;
      v9=17;
      v10=19;
      v11=21;
      v12=23;
      v13=25;
      v14=27;
      v15=29;
      v16=31;
      v17=33;
      v18=35;


    });
  }


  even() {
    setclr();
    setState(() {
      v1=2;
      v2=4;
      v3=6;
      v4=8;
      v5=10;
      v6=12;
      v7=14;
      v8=16;
      v9=18;
      v10=20;
      v11=22;
      v12=24;
      v13=26;
      v14=28;
      v15=30;
      v16=32;
      v17=34;
      v18=36;


    });
  }

  zero() {
    setclr();
    setState(() {
      v1=0;
    });
  }





}



