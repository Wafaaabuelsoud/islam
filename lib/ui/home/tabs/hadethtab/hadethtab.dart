import 'package:flutter/material.dart';
import 'package:islami/core/resources/assetsmanager.dart';
import 'package:islami/core/resources/colorManager.dart';
import 'package:islami/ui/home/tabs/hadethtab/widgets/Hadethitem.dart';

class Hadethtab extends StatefulWidget {
  const Hadethtab({super.key});

  @override
  State<Hadethtab> createState() => _HadethtabState();
}

class _HadethtabState extends State<Hadethtab> {

  PageController controller = PageController(
    viewportFraction: 0.8,
  );

  int selectedindex = 0;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    double widthscreen = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        color: Colormanager.secondarycolor,
        image: DecorationImage(
          image: AssetImage(Assetsmanager.hadethbg),
          fit: BoxFit.fitWidth,
          alignment: Alignment.topCenter,
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            children: [

              Image.asset(
                Assetsmanager.islamiheader,
                width: widthscreen * 0.8,
                fit: BoxFit.fitWidth,
              ),

              Expanded(
                child: PageView.builder(
                  controller: controller,
                  itemCount: 50,
                  onPageChanged: (index) {
                    setState(() {
                      selectedindex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Hadethitem(
                      index: index,
                      selectedindex: selectedindex,
                    );
                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}