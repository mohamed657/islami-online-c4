import 'package:flutter/material.dart';

class VersWidget extends StatelessWidget{
  String text;
  int index;
  VersWidget(this.text,this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),

      child: Text(text+' {${index+1}}',
      style: TextStyle(
        fontSize: 20
      ),
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
      ),
    );
  }
}
