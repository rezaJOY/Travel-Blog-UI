import 'dart:async';

import 'package:flutter/material.dart';
import 'package:travel_ui/home.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: SplashScreen(),

    );
  }
}
//fromhere
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {    //duration of splash screen and auto execute
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), ()
    {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(

          child: Column(

            children: [
              SizedBox(
                height: 30,
              ),

              Image.asset('images/splash.jpg', height: 500,),
              SizedBox(height: 10),
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.deepOrangeAccent),
              )

            ],
          ),
        ),
      ),
    );
  }
}



