import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/core/resources/assetsmanager.dart';
import 'package:islami/core/resources/colorManager.dart';
import 'package:islami/model/suramodel.dart';

class Suradetails extends StatefulWidget {
  static const String routename = "sura_details";

  @override
  State<Suradetails> createState() => _SuradetailsState();
}

class _SuradetailsState extends State<Suradetails> {
  @override
  Widget build(BuildContext context) {
    Suramodel suramodel =
        ModalRoute.of(context)!.settings.arguments as Suramodel;
    if (suratext.isEmpty) {
      readfile(suramodel.suranumber);
    }
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colormanager.primarycolor),
        title: Text(suramodel.suranameEn),
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
                        suramodel.suranameAr,
                        style: TextStyle(
                            color: Colormanager.primarycolor,
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                      ),
                      Image.asset(Assetsmanager.quranrightcorner)
                    ],
                  ),
                  Expanded(
                      child: suratext.isEmpty
                          ? Center(
                              child: CircularProgressIndicator(
                              color: Colormanager.primarycolor,
                            ))
                          : SingleChildScrollView(
                            child: Text(
                                suratext,
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

  String suratext = "";

  readfile(int suraNumber) async {
    String sura =
        await rootBundle.loadString("assets/Suras/$suraNumber.txt");
    List<String> suralines = sura.split("\n");
    for (int i = 0; i < suralines.length; i++) {
      suratext += suralines[i];
      suratext += "(${i + 1})";
    }
    setState(() {});
  }
}
