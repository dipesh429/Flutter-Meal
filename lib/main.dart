import 'package:flutter/material.dart';

import './Screen/MyTabBar.dart';
import './Screen/CategoryIndividualScreen.dart';
import './Screen/SettingScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          accentColor: Colors.amber,
          primaryColor: Colors.purple,
          errorColor: Colors.red,
          canvasColor: Colors.white),
      routes: {
        '/': (ctx) => MyTabBar(),
        '/category':(ctx)=>CategoryIndividualScreen(),
        '/setting':(ctx)=>SettingScreen()
      },
    );
  }
}
