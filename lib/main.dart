import 'package:flutter/material.dart';
import 'package:islami/intro_screen.dart';
import 'package:islami/ui/hadethdetails/screen/hadethdetails.dart';
import 'package:islami/ui/home/screen/homescreen.dart';
import 'package:islami/ui/sura%20_details/Screen/suradetails.dart';

void main(){
  runApp(IslamiApp());
}
class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      initialRoute: IntroScreen.routename,
      routes: {
        IntroScreen.routename:(context)=>IntroScreen(),
        Homescreen.routename:(context)=>Homescreen(),
        Hadethdetails.routename:(context)=>Hadethdetails(),
        Suradetails.routename:(context)=>Suradetails()
      }
    );
  }
}
