import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islami/ui/home/tabs/hadethtab/hadethtab.dart';
import 'package:islami/ui/home/tabs/qurantab/qurantab.dart';
import 'package:islami/ui/home/tabs/radiotab/radiotab.dart';
import 'package:islami/ui/home/tabs/sebhatab/sebhatab.dart';
import 'package:islami/ui/home/tabs/timetab/timetab.dart';

import '../../../core/resources/assetsmanager.dart';
import '../../../core/resources/colorManager.dart';
import '../../../core/resources/stringsmanager.dart';

class Homescreen extends StatefulWidget {
  static const String routename = "home";

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selectedindex=0;
List<Widget>tabs=[
  Qurantab(),
  Hadethtab(),
  Sebhatab(),
  Radiotab(),
  Timetab()
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (value){
          setState(() {
            selectedindex=value;
          });
        },
        selectedIndex: selectedindex,
        backgroundColor: Colormanager.primarycolor,
        indicatorColor: Colormanager.secondarycolor.withValues(alpha: 0.6),
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        labelTextStyle: WidgetStateTextStyle.resolveWith((state){
          return TextStyle(
            fontSize: 12,fontWeight: FontWeight.w700,color: Colormanager.onprimarycolor
          );
        }),
        destinations: [
          NavigationDestination(
            icon: SvgPicture.asset(Assetsmanager.quran),
            label: Stringsmanager.qurantab,
            selectedIcon: SvgPicture.asset(Assetsmanager.quranselected),
          ),
          NavigationDestination(
            icon: SvgPicture.asset(Assetsmanager.hadeth),
            label: Stringsmanager.hadethtab,
            selectedIcon: SvgPicture.asset(Assetsmanager.hadethselected),
          ),
          NavigationDestination(
            icon: SvgPicture.asset(Assetsmanager.sebha),
            label: Stringsmanager.sebhatab,
            selectedIcon: SvgPicture.asset(Assetsmanager.sebhaselected),
          ),
          NavigationDestination(
            icon: SvgPicture.asset(Assetsmanager.radio),
            label: Stringsmanager.radiotabtab,
            selectedIcon: SvgPicture.asset(Assetsmanager.radioselected),
          ),
          NavigationDestination(
            icon: SvgPicture.asset(Assetsmanager.time),
            label: Stringsmanager.timetabtab,
            selectedIcon: SvgPicture.asset(Assetsmanager.timeselected),
          ),
        ],
      ),
      body: tabs[selectedindex],
    );
  }
}
