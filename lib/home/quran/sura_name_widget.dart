import 'package:flutter/material.dart';
import 'package:islami_online_c4/home/quran/SuraDetailsScrean.dart';

class SuraName_widget extends StatelessWidget{

  String SuraName;
  int index;
  SuraName_widget(this.index,this.SuraName);


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, SuraDetailsScrean.routeName,
        arguments: SuraDetailsArguments(index, SuraName),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(SuraName,
          style: TextStyle(
          fontSize: 25
        ),
        textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
