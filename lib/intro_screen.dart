import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/core/resources/Appstyle.dart';
import 'package:islami/core/resources/assetsmanager.dart';
import 'package:islami/core/resources/colorManager.dart';
import 'package:islami/ui/home/screen/homescreen.dart';

class IntroScreen extends StatelessWidget {
  static const String routename="introscreen";
   IntroScreen({super.key});

  var listPagesViewModel=[
    PageViewModel(
        titleWidget: Text("Welcome To Islami App",style: Appstyle.titlestyle),
      body: "",
      image: Image.asset("assets/images/intro.png")
    ),
    PageViewModel(
      titleWidget: Text("Welcome To Islami",style: Appstyle.titlestyle),
      bodyWidget: Text("We Are Very Excited To Have You In Our Community",style: Appstyle.bodystyle,textAlign: TextAlign.center,),
      image: Image.asset("assets/images/intro2.png")
    ),
    PageViewModel(
        titleWidget: Text("Reading the Quran",style: Appstyle.titlestyle),
      bodyWidget: Text("Read, and your Lord is the Most Generous",style: Appstyle.bodystyle,textAlign: TextAlign.center),
      image: Image.asset("assets/images/intro3.png")
    ),
    PageViewModel(
        titleWidget: Text("Bearish",style: Appstyle.titlestyle),
      bodyWidget:Text("Praise the name of your Lord, the Most High",style: Appstyle.bodystyle,textAlign: TextAlign.center ),
      image:Image.asset("assets/images/intro4.png")
    ),
    PageViewModel(
        titleWidget: Text("Holy Quran Radio",style: Appstyle.titlestyle),
      bodyWidget: Text("You can listen to the Holy Quran Radio through the application for free and easily",style: Appstyle.bodystyle,textAlign: TextAlign.center),
      image: Image.asset("assets/images/intro5.png")
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Colormanager.secondarycolor,
      globalHeader: Image.asset("assets/images/Group 34.png"),
      bodyPadding: EdgeInsets.only(top:228 ),
      pages: listPagesViewModel,
      showNextButton: false,
      showSkipButton: true,
      skip: Text("skip",style: Appstyle.bodystyle,),
      showBackButton: true,
      back: Icon(Icons.arrow_back_ios,color: Colormanager.primarycolor,),
      done:  Text("Done",style: Appstyle.titlestyle),
      dotsDecorator: DotsDecorator(color: Color(0xff707070),activeColor:Colormanager.primarycolor ,activeSize: Size(18,7)),

      onDone: () {
        Navigator.pushNamed(context, Homescreen.routename);
      },onSkip: () {
      Navigator.pushNamed(context, Homescreen.routename);

    },
    );
  }
}
