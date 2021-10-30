import 'package:flutter/material.dart';
import 'package:islami_online_c4/home/HomeScreen.dart';
import 'package:islami_online_c4/home/quran/SuraDetailsScrean.dart';

void main() {
  runApp(MainApplication());
}

class MyThemeData {
  static const Color primaryColor = Color.fromARGB(255, 183, 147, 95);
  static final ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: MyThemeData.primaryColor,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 30),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.black, unselectedItemColor: Colors.white));
  static final ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: Color.fromARGB(255, 20, 26, 46),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(
              color: Colors.black
          ),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 30)
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Color.fromARGB(255, 250, 204, 29), unselectedItemColor: Colors.white));

}

class MainApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islami',
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      routes: {
        HomeScreen.routeName: (buildContext) => HomeScreen(),
        SuraDetailsScrean.routeName : (buildContext) => SuraDetailsScrean(),

      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
