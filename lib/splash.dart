import 'dart:async';

import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class splash extends StatefulWidget {
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  initState() {
    super.initState();
    new Timer(const Duration(seconds: 5), onClose);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Align(
          alignment: FractionalOffset.center,
          child: Container(
            color: Colors.black,
            width: double.infinity,
            //Text("Powered by Mokh",style: TextStyle(fontSize: 15,color: Colors.white,)),
            child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FadeIn(duration: Duration(milliseconds: 1000), curve: Curves.easeIn,child: Text("Rock",style: TextStyle(fontSize: 28,color: Colors.white,shadows: [Shadow(offset: Offset(0, 0.0), blurRadius: 3.0, color: Colors.white)],),)),
                    SizedBox(height: 10,),
                    FadeIn(duration: Duration(milliseconds: 2100), curve: Curves.easeIn,child: Text("Paper",style: TextStyle(fontSize: 28,color: Colors.white,shadows: [Shadow(offset: Offset(0.0, 0.0), blurRadius: 3.0, color: Colors.white)],),)),
                    SizedBox(height: 10,),
                    FadeIn(duration: Duration(milliseconds: 4100), curve: Curves.easeIn,child: Text("Scissors",style: TextStyle(fontSize: 28,color: Colors.white,shadows: [Shadow(offset: Offset(0.0, 0.0), blurRadius: 3.0, color: Colors.white)],),)),
                  ],
                ),
          )),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeIn(duration: Duration(milliseconds: 4800), curve: Curves.easeIn,child: Text("Powered by Mokh",style: TextStyle(fontSize: 15,color: Colors.white,))),
            ],
          ),
        )
      ),
    );
  }

  void onClose() {
    Navigator.of(context).pushReplacement(new PageRouteBuilder(
        maintainState: true,
        opaque: true,
        pageBuilder: (context, _, __) => home(),
        transitionDuration: const Duration(seconds: 2),
        transitionsBuilder: (context, anim1, anim2, child) {
          return new FadeTransition(
            child: child,
            opacity: anim1,
          );
        }));
  }
}


