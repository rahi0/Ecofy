
import 'package:flutter/material.dart';

import 'Screens/HomePage/homaepage.dart';
import 'Screens/LoginPage/loginPage.dart';
import 'Screens/SplashScreen/spalshScreen.dart';
import 'customWidget/customNavigation/customNavigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecofy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SpalshScreen(),//Homepage()
            //NavigationBarr(),
    );
  }
}

