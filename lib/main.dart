import 'package:Fobos/helpers/materialColors.dart';
import 'package:Fobos/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        accentColor: createMaterialColor(Color.fromRGBO(91, 221, 120, 1)),
        primarySwatch: createMaterialColor(Color.fromRGBO(255, 132, 94, 1)),
        fontFamily: 'Sen',
        primaryTextTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
