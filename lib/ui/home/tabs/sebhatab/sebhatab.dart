import 'package:flutter/material.dart';
import 'package:islami/core/resources/assetsmanager.dart';
import 'package:islami/core/resources/colorManager.dart';

class Sebhatab extends StatefulWidget {

  Sebhatab({super.key});

  @override
  State<Sebhatab> createState() => _SebhatabState();
}

class _SebhatabState extends State<Sebhatab> {
  List<String>zekrlist=[
    "سبحان الله",
    "الحمد لله",
    "الله اكبر",
    "استغفر الله",
    "غفرانك",
  ];

  int counter=0;
int index=0;
int angle=0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                Assetsmanager.sebhabg,
              ),
              fit: BoxFit.fill),
        ),
        width: double.infinity,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      Assetsmanager.islamiheader,
                      fit: BoxFit.fitHeight,
                      height: height * 0.17,
                    )),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "سَبِّحِ اسْمَ رَبِّكَ الأعلى ",
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colormanager.onprimarycolor),
                ),
                SizedBox(
                  height: 16,
                ),
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Image.asset(Assetsmanager.sebhahead),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 80),
                          child: GestureDetector(
                            onTap: () {
                              counter++;
                              angle++;
                              if(counter%33==0)
                                index++;
                              if(index==zekrlist.length){
                                index=0;
                                counter=0;
                              }
                              setState(() {

                              });
                            },
                              child: Transform.rotate(
                                angle:-angle/2 ,
                                  child: Image.asset(Assetsmanager.sebhabody))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 70),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                zekrlist[index],
                                style: TextStyle(
                                    fontSize: 36,
                                    fontWeight: FontWeight.bold,
                                    color: Colormanager.onprimarycolor),
                              ),
                              Text(
                                "$counter",
                                style: TextStyle(
                                    fontSize: 36,
                                    fontWeight: FontWeight.bold,
                                    color: Colormanager.onprimarycolor),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
