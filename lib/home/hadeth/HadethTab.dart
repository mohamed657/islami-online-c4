import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'hadethNameWidget.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  @override
  Widget build(BuildContext context) {
    if(allHadethItems.isEmpty)
      loadHadethFile();
    return Column(
      children: [
        Expanded(
            child:
            Image.asset('assets/images/headhadeth.png')
        ),
        Expanded(
          flex: 3,
          child:allHadethItems.isEmpty?
              Center(
                  child: CircularProgressIndicator()):
          ListView.separated(
              itemBuilder:(buildContext , index){
                return HadethNameWidget(allHadethItems[index]);

              },
            itemCount: allHadethItems.length,
            separatorBuilder: (buildContext , index){
                return Container(
                  height: 1,
                  color: Theme.of(context).primaryColor,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                );
            },

          ),


        ),
      ],

    );
  }

  List<HadethItem> allHadethItems =[];

   void loadHadethFile()async{
    List<HadethItem> allHadethData=[];
    String fileContent= await rootBundle.loadString('assets/fils/ahadeth.txt');
    List<String> allAhadeth= fileContent.split('#\r\n');
    for(int i=0 ; i < allAhadeth.length ; i++){
    List<String> singlehadethContent =  allAhadeth[i].split('\n');
     String title =  singlehadethContent[0];
    String content ='';
    for(int j =1 ; j<singlehadethContent.length ; j++){
     content +=  singlehadethContent[j] + ' ';
      }
    HadethItem item =HadethItem(title, content);
    allHadethData.add(item);
    }
    allHadethItems=allHadethData;
    setState(() {

    });



  }
}
class HadethItem{
  String title;
  String content;
  HadethItem(this.title,this.content);
}
