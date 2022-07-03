import 'dart:math';

import 'package:flutter/material.dart';

class Computer extends StatefulWidget {
  @override
  _ComputerState createState() => _ComputerState();
}

class _ComputerState extends State<Computer> {
  var personScore = 0;
  var comScore = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Icon(Icons.computer,color: Colors.black,),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      child: Image(image: AssetImage("img/$cChosenIcon.png"),),
                    ),
                  ],
                ),
              ),
             Container(
                  color: Colors.black12,
                 child: Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Icon(Icons.computer,color: Colors.white,),
                     SizedBox(width: 10,),
                     Text("${comScore} - ${personScore}",style: TextStyle(color: Colors.white,fontSize: 20),),
                     SizedBox(width: 10,),
                     Icon(Icons.person,color: Colors.white,),
                   ],
                 ),
             ),
              Container(
                child: Column(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      child: Image(image: AssetImage("img/$chosenIcon.png"),),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 55,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 2.0
              )
            ]
          ),
          child: BottomAppBar(
            color: Colors.white,
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Container(margin: EdgeInsets.only(left: 15),child: Icon(Icons.person,color: Colors.black,size: 30,)) ,
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Container(margin: EdgeInsets.only(right: 110),
                      child: Row(

                        children: [
                          IconButton(icon: Image(image: AssetImage("img/r.png"),color: rcolor,), onPressed: (){
                            setState(() {
                              rcolor=Colors.green;
                              scolor=null;
                              pcolor=null;
                            });
                            chosen("r");}),
                          IconButton(icon: Image(image: AssetImage("img/p.png"),color: pcolor), onPressed: (){
                            setState(() {
                              rcolor=null;
                              scolor=null;
                              pcolor=Colors.green;
                            });
                            chosen("p");}),
                          IconButton(icon: Image(image: AssetImage("img/s.png"),color: scolor), onPressed: (){
                            setState(() {
                              rcolor=null;
                              scolor=Colors.green;
                              pcolor=null;
                            });
                            chosen("s");}),
                        ],
                      )
                  ) ,
                ),
              ],
            )
          ),
        ),
      ),
    );
  }

  var rcolor = null;
  var pcolor = null;
  var scolor = null;
  var chosenIcon = "p";
  var cChosenIcon ="p";
  void chosen(String s) {
    var rng = new Random();
    var cValue = rng.nextInt(3); // 0 or 1 or 2
    setState(() {
      if (cValue == 0){
        cChosenIcon = "r";
        increment("r",s);
      }else if (cValue == 1){
        cChosenIcon = "p";
        increment("p",s);
      }else{
        cChosenIcon = "s";
        increment("s",s);
      }
      chosenIcon=s;
    });
  }

  void increment(String c, String p) {
    if(c == "r" && p == "p"){
        personScore++;
    }else if(c == "r" && p == "s"){
      comScore++;
    }else if (c == "p" && p == "r"){
      comScore++;
    }else if (c == "p" && p == "s"){
      personScore++;
    }else if (c == "s" && p == "p"){
       comScore++;
    }else if (c == "s" && p == "r"){
       personScore++;
    }else{
      
    }

  }
}
