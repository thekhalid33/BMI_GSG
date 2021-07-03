import 'package:flutter/material.dart';

import './view/screens/choose_screen.dart';
import './view/screens/age_screen.dart';
import './view/screens/detail_screen.dart';
import './view/screens/result_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: ChooseScreen.routeName,
      routes: {
        ChooseScreen.routeName: (context) => ChooseScreen(),
        AgeScreen.routeName: (context) => AgeScreen(),
        DetailScreen.routeName: (context) => DetailScreen(),
        ResultScreen.routeName: (context) => ResultScreen(),
      },
    );
  }
}
