import 'package:flutter/material.dart';

class AppTheme {
  //primaryColor: Colors.red,
  static const Color primary = Colors.deepOrange;

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
            color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
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
          foregroundColor: Colors.black),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              shape: const StadiumBorder(),
              elevation: 5)),
      inputDecorationTheme: InputDecorationTheme(
        floatingLabelStyle: const TextStyle(color: Colors.green),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.green),
            borderRadius: BorderRadius.circular(10)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.green),
            borderRadius: BorderRadius.circular(10)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ));
}
