import 'package:flutter/material.dart';
import 'package:islami/core/resources/assetsmanager.dart';
import 'package:islami/core/resources/colorManager.dart';

class Mostrecentlyitem extends StatelessWidget {
  const Mostrecentlyitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      decoration: BoxDecoration(color: Colormanager.primarycolor,borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Text(
              "Al-Anbiya",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Colormanager.secondarycolor),
            ),
            Text(
              "الأنبياء",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Colormanager.secondarycolor),
            ),
            Text(
              "112 Verses  ",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: Colormanager.secondarycolor),
            ),
          ]),
          Image.asset(Assetsmanager.mostrecetimg)
        ],
      ),
    );
  }
}
