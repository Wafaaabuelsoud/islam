import 'package:flutter/material.dart';
import 'package:islami/model/hadethmodel.dart';

class Hadethdetails extends StatelessWidget {
  static const String routename="hadeth details";
  const Hadethdetails({super.key});

  @override
  Widget build(BuildContext context) {
    Hadethmodel hadethmodel=ModalRoute.of(context)!.settings.arguments as Hadethmodel;
    return  Scaffold(

    );
  }
}
