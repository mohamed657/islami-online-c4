import 'package:flutter/material.dart';
import 'package:islami_online_c4/home/hadeth/HadethTab.dart';

class HadethDetailsScrean extends StatelessWidget{
  static const String routeName='Hadeth';

  @override
  Widget build(BuildContext context) {
    var args =ModalRoute.of(context)!.settings.arguments as HadethItem;
    return  Stack(
      children: [
      Image.asset('assets/images/main_background.png',
      width: double.infinity,
      fit: BoxFit.fill,
    ),
    Scaffold(
    appBar: AppBar(
    title: Text(args.title),
    ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 48,horizontal: 24),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),

        ),
        child: SingleChildScrollView(
          child: Text(args.content,
          style: TextStyle(
            fontSize: 18,
          ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    )
      ]
    );
  }
}
