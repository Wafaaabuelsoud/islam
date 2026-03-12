import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/resources/assetsmanager.dart';
import 'package:islami/core/resources/colorManager.dart';
import 'package:islami/model/hadethmodel.dart';
import 'package:islami/ui/hadethdetails/screen/hadethdetails.dart';

class Hadethitem extends StatefulWidget {
  int index;
  int selectedindex;
  Hadethitem({required this.index, required this.selectedindex});

  @override
  State<Hadethitem> createState() => _HadethitemState();
}

class _HadethitemState extends State<Hadethitem> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadfile();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, Hadethdetails.routename,arguments: hadethmodel);
      },
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: 8,
            vertical: widget.selectedindex == widget.index ? 0 : 20),
        decoration: BoxDecoration(
            color: Colormanager.primarycolor,
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 12, left: 12, right: 12),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(Assetsmanager.leftcorner),
                        Expanded(
                            child: Text(
                              hadethmodel?.title??"",

                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colormanager.secondarycolor),
                            )),
                        Image.asset(Assetsmanager.rightcorner),
                      ],
                    ),
                    Expanded(
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Image.asset(Assetsmanager.hadethitembg),
                          Text(hadethmodel?.content??""
                          ,textAlign:TextAlign.center,
                            maxLines: 10,
                            overflow: TextOverflow.ellipsis,
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontFamily: "Janna LT",
                                height: 2,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colormanager.secondarycolor),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Image.asset(
              Assetsmanager.hadethmosque,
              width: double.infinity,
              fit: BoxFit.fill,
            )
          ],
        ),
      ),
    );
  }

  Hadethmodel? hadethmodel;
  loadfile() async {
    String hadeeth = await rootBundle
        .loadString("assets/Hadeeth/Hadeeth/h${widget.index + 1}.txt");
    List<String> hadethlines = hadeeth.split("\n");
    String hadethtitle = hadethlines[0].trim();
    hadethlines.removeAt(0);
    String hadethcontet = hadethlines.join(" ").trim();
    hadethmodel = Hadethmodel(
        title: hadethtitle, content: hadethcontet, number: widget.index + 1);
    setState(() {

    });
  }
}
