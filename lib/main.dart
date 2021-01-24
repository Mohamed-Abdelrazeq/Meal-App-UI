import 'package:flutter/material.dart';

import 'Screens/MealScreen.dart';
import 'Screens/MainScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        initialRoute: MainScreen.id,
        routes: {
          MealScreen.id: (context) => MealScreen(),
          MainScreen.id: (context) => MainScreen(),

        },
    );
  }
}






