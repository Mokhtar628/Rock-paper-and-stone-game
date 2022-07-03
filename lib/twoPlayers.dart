import 'dart:math';

import 'package:flutter/material.dart';

class two extends StatefulWidget {
  @override
  _twoState createState() => _twoState();
}

class _twoState extends State<two> {
  var personScore = 0;
  var comScore = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            //crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Container(margin: EdgeInsets.only(left: 0),child: Icon(Icons.person,color: Colors.blue,size: 30,)) ,
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Container(margin: EdgeInsets.only(right: 90),
                    child: Row(

                      children: [
                        IconButton(icon: Image(image: AssetImage("img/r.png"),color: rcolor,), onPressed: (){
                          setState(() {
                            if(pt!= "" && pb != ""){
                              pt = "";
                              pb = "";
                              cChosenIcon="";
                              chosenIcon="";
                            }
                          });
                          chosent("r");}),
                        IconButton(icon: Image(image: AssetImage("img/p.png"),color: pcolor), onPressed: (){
                          setState(() {
                            if(pt!= "" && pb != ""){
                              pt = "";
                              pb = "";
                              cChosenIcon="";
                              chosenIcon="";
                            }
                          });
                          chosent("p");}),
                        IconButton(icon: Image(image: AssetImage("img/s.png"),color: scolor), onPressed: (){
                          setState(() {
                            if(pt!= "" && pb != ""){
                              pt = "";
                              pb = "";
                              cChosenIcon="";
                              chosenIcon="";
                            }
                          });
                          chosent("s");}),
                      ],
                    )
                ) ,
              ),
            ],
          )
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
                    Icon(Icons.person,color: Colors.blue,),
                    SizedBox(width: 10,),
                    Text("${comScore} - ${personScore}",style: TextStyle(color: Colors.white,fontSize: 20),),
                    SizedBox(width: 10,),
                    Icon(Icons.person,color: Colors.red,),
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
                    child: Container(margin: EdgeInsets.only(left: 15),child: Icon(Icons.person,color: Colors.red,size: 30,)) ,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Container(margin: EdgeInsets.only(right: 110),
                        child: Row(

                          children: [
                            IconButton(icon: Image(image: AssetImage("img/r.png"),color: rcolor,), onPressed: (){
                              setState(() {
                                if(pt!= "" && pb != ""){
                                  pt = "";
                                  pb = "";
                                  cChosenIcon="";
                                  chosenIcon="";
                                }
                              });
                              chosen("r");}),
                            IconButton(icon: Image(image: AssetImage("img/p.png"),color: pcolor), onPressed: (){
                              setState(() {
                                if(pt!= "" && pb != ""){
                                  pt = "";
                                  pb = "";
                                  cChosenIcon="";
                                  chosenIcon="";
                                }
                              });
                              chosen("p");}),
                            IconButton(icon: Image(image: AssetImage("img/s.png"),color: scolor), onPressed: (){
                              setState(() {
                                if(pt!= "" && pb != ""){
                                  pt = "";
                                  pb = "";
                                  cChosenIcon="";
                                  chosenIcon="";
                                }
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
  var chosenIcon =null;
  var cChosenIcon =null;
  var pt = "";
  var pb = "";
  void chosent(String s) {
     pt = s;
     check();
  }
  void chosen(String s) {
    pb = s;
    check();
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

  void check() {
    if(pt != "" && pb != ""){
      setState(() {
        chosenIcon = pb;
        cChosenIcon = pt;
        increment(pt,pb);
      });
    }
  }
}
