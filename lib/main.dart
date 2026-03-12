import 'package:flutter/material.dart';
import 'package:islami/ui/hadethdetails/screen/hadethdetails.dart';
import 'package:islami/ui/home/screen/homescreen.dart';

void main(){
  runApp(IslamiApp());
}
class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      initialRoute: Homescreen.routename,
      routes: {
        Homescreen.routename:(context)=>Homescreen(),
        Hadethdetails.routename:(context)=>Hadethdetails()
      }
    );
  }
}
