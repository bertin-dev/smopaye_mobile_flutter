import 'dart:async';
import 'package:flutter/material.dart';
import 'package:smopaye_mobile/Views/login.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}


class StartState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }


  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 5);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => Login()
    )
    );
  }

  initScreen(BuildContext context) {

    return Scaffold(
      //backgroundColor: Colors.blueAccent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg_screen_splash.png"),
            fit: BoxFit.cover,
          ),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              child: Image.asset("images/logo_screen_splash.png"),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 1,
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Text(
              "Chargement Encours...",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white
              ),
            )
          ],
        ),
      ),
    );
  }
}