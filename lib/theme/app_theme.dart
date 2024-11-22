import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';
class AppTheme {
  //primaryColor: Colors.red,
  static const Color primary = Colors.deepOrange;

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
        
        appBarTheme: const AppBarTheme(
         titleTextStyle: TextStyle( color:Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
         color: Colors.green,
        ),
        //ListTile theme
        listTileTheme: const ListTileThemeData(
          iconColor: Colors.orange,
        ),
        //TextButtonTheme

        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: Colors.green),
        ),
        //FloatingActionButtons
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.blue,
          elevation: 5,
          foregroundColor: Colors.black
        )
  );
}