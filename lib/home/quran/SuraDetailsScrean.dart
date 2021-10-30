import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_online_c4/home/quran/versWidget.dart';

class SuraDetailsScrean extends StatefulWidget{
  static const String routeName='details';

  @override
  State<SuraDetailsScrean> createState() => _SuraDetailsScreanState();
}

class _SuraDetailsScreanState extends State<SuraDetailsScrean> {
  List<String> ayat = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as SuraDetailsArguments;
   if(ayat.isEmpty)
    readSura(args.index);

    return  Stack(
      children: [
      Image.asset('assets/images/main_background.png',
      width: double.infinity,
      fit: BoxFit.fill,

    ),
    Scaffold(

    appBar: AppBar(
    title: Text(args.name),

    ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 24,vertical: 48),
        padding: EdgeInsets.all(9),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),

        ),
        child: ayat.isEmpty ? Center(child: CircularProgressIndicator())
        : ListView.separated(
            itemBuilder: (buildContext,index){
              return VersWidget(ayat[index],index) ;
            },
          itemCount: ayat.length,
        separatorBuilder: (buildContext,index){
              return Container(
                height: 1,
                color: Theme.of(context).primaryColor ,
                margin: EdgeInsets.symmetric(horizontal: 24),
              );
        },
        )
        ,
      ),

      ),


    ]);
  }

  void readSura(int index)async{
    String fileName = 'assets/fils/${index+1}.txt';
    String filleContent = await rootBundle.loadString(fileName);
    List<String> verses =  filleContent.split('\n');
    ayat = verses;
    setState(() {

    });




  }
}

class SuraDetailsArguments{
  String name;
  int index;
  SuraDetailsArguments(this.index,this.name);

}
