import 'package:flutter/material.dart';
import 'package:islami/ui/home/tabs/qurantab/widgets/mostrecentlyitem.dart';

class Mostrecently extends StatelessWidget {
  const Mostrecently({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Mostrecentlyitem(),
        separatorBuilder: (context, index) =>SizedBox(width: 10,) ,
        itemCount: 10);
  }
}
