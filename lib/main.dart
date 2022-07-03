import 'package:flutter/material.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:rps/splash.dart';
import 'package:rps/twoPlayers.dart';

import 'VSComputer.dart';

void main() {
  //WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: splash() ,
  ),
  );
}

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home>{
  Widget build(BuildContext context){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: FadeIn(
            duration: Duration(seconds: 7), curve: Curves.easeInOut,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 150,),
                  Container(
                    width: 180,
                    height: 180,
                    child: Image(image: AssetImage("img/rps.png"),),
                  ),
                  SizedBox(height: 150,),
                  Container(
                    width: 150,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Computer()));
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      ),
                      child: Container(child: Text("VS computer",style: TextStyle(color: Colors.white,shadows: [Shadow(color: Colors.white,blurRadius: 3.5)]),)),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    width: 150,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => two()));
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      ),
                      child: Container(child: Text("Two player",style: TextStyle(color: Colors.white,shadows: [Shadow(color: Colors.white,blurRadius: 3.5)]),)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
  }
}