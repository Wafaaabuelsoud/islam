import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islami/core/resources/colorManager.dart';
import 'package:islami/model/suramodel.dart';
import 'package:islami/ui/sura%20_details/Screen/suradetails.dart';

import '../../../../../core/resources/assetsmanager.dart';

class Suraitem extends StatelessWidget {
  Suramodel suramodel;
  Suraitem(this.suramodel);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, Suradetails.routename,arguments: suramodel);
      },
      child: Row(children: [Stack(
        alignment: Alignment.center,
        children: [
        SvgPicture.asset(Assetsmanager.suranumber),
        Text(suramodel.suranumber.toString(),style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colormanager.onprimarycolor),)
      ],
      ),
        SizedBox(width: 24,),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(suramodel.suranameEn,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colormanager.onprimarycolor),),
            Text("${suramodel.suraverses} verses",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: Colormanager.onprimarycolor),),
          ],),
        ),
        Text(suramodel.suranameAr,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colormanager.onprimarycolor),),
                  ]
        ,),
    );
  }
}
