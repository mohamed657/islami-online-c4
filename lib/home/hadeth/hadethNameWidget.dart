import 'package:flutter/material.dart';
import 'package:islami_online_c4/home/hadeth/HadethTab.dart';

import 'HadethDetailsScrean.dart';

class HadethNameWidget extends StatelessWidget{
  HadethItem item;
  HadethNameWidget(this.item);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, HadethDetailsScrean.routeName,
        arguments: item
        );
      },
      child: Container(
        padding: EdgeInsets.all(8),

        child: Text(item.title,
          style: TextStyle(

            fontSize: 25
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
