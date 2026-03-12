import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islami/core/resources/assetsmanager.dart';
import 'package:islami/core/resources/colorManager.dart';
import 'package:islami/core/resources/stringsmanager.dart';
import 'package:islami/ui/home/tabs/qurantab/widgets/mostrecently.dart';
import 'package:islami/ui/home/tabs/qurantab/widgets/suraslist.dart';

class Qurantab extends StatelessWidget {
  Qurantab({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  Assetsmanager.back_quran,
                ),
                fit: BoxFit.fill)),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(alignment: Alignment.center,
                child: Image.asset(
                  Assetsmanager.islamiheader,
                  height: 0.16 * height,
                  fit: BoxFit.fitHeight,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color:Colormanager.onprimarycolor ),
                decoration: InputDecoration(
                  hintText: Stringsmanager.suraname,
                    hintStyle: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color:Colormanager.onprimarycolor ),
                  prefixIconConstraints: BoxConstraints(maxHeight: 70,maxWidth: 70),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(13),
                      child: SvgPicture.asset(
                        Assetsmanager.quran,width: 28,height: 28,
                        colorFilter: ColorFilter.mode(
                            Colormanager.primarycolor, BlendMode.srcIn),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Colormanager.primarycolor)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Colormanager.primarycolor))),
              ),SizedBox(height: 20,),
              Text(Stringsmanager.mostresanctly,style: TextStyle(color: Colormanager.onprimarycolor,fontSize: 16,fontWeight: FontWeight.w700),)
            ,SizedBox(height: 10,),

Container(height: height*0.16,
    child: Mostrecently()),
              SizedBox(height: 10,),
              Text(Stringsmanager.suralist,style: TextStyle(color: Colormanager.onprimarycolor,fontSize: 16,fontWeight: FontWeight.w700),),
              SizedBox(height: 10,),
              Expanded(child: Suraslist())

            ],
          ),
        ));
  }
}
