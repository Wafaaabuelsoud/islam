import 'package:flutter/material.dart';
import 'package:islami/core/resources/Appconstants.dart';
import 'package:islami/core/resources/colorManager.dart';
import 'package:islami/ui/home/tabs/qurantab/widgets/suraitem.dart';

class Suraslist extends StatelessWidget {
  const Suraslist({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ListView.separated(
        itemBuilder: (context, index) => Suraitem(Appconstants.suraList[index]),
        separatorBuilder: (context, index) => Divider(
              color: Colormanager.onprimarycolor,
          endIndent: width*0.1,
          indent: width*0.1,
            ),
        itemCount: Appconstants.suraList.length);
  }
}
