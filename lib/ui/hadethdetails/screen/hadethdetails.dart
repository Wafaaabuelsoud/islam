import 'package:flutter/material.dart';
import 'package:islami/model/hadethmodel.dart';

import '../../../core/resources/assetsmanager.dart';
import '../../../core/resources/colorManager.dart';

class Hadethdetails extends StatelessWidget {
  static const String routename="hadeth details";
  const Hadethdetails({super.key});

  @override
  Widget build(BuildContext context) {
    Hadethmodel hadethmodel=ModalRoute.of(context)!.settings.arguments as Hadethmodel;
    return  Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colormanager.primarycolor),
        title: Text('Hadith${hadethmodel.number}'),
        titleTextStyle: TextStyle(
            color: Colormanager.primarycolor,
            fontSize: 20,
            fontWeight: FontWeight.w700),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, top: 18),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(Assetsmanager.quranleftcorner),
                      Text(
                        hadethmodel.title,
                        style: TextStyle(
                            color: Colormanager.primarycolor,
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                      ),
                      Image.asset(Assetsmanager.quranrightcorner)
                    ],
                  ),
                  Expanded(
                      child:SingleChildScrollView(
                        child: Text(
                          hadethmodel.content,
                          style: TextStyle(
                              height: 2.5,
                              color: Colormanager.primarycolor,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center,
                        ),
                      )),
                ],
              ),
            ),
          ),
          Image.asset(Assetsmanager.quranmosque),
        ],
      ),
      backgroundColor: Colormanager.secondarycolor,
    );
  }
}
