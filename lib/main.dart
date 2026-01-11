import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);
var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: Color.fromARGB(255, 5, 99, 125),
);
void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        cardTheme: CardThemeData().copyWith(
          color: kDarkColorScheme.secondaryContainer,
          margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(70),
            ),
            foregroundColor: Colors.white,
            backgroundColor: kDarkColorScheme.primaryContainer,
            // foregroundColor: kDarkColorScheme.onPrimaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
          titleMedium: TextStyle(
            fontWeight: FontWeight.w500,
            color: kDarkColorScheme.onSecondaryContainer,
            fontSize: 14,
          ),
          titleLarge: TextStyle(
            fontWeight: FontWeight.w500,
            color: kDarkColorScheme.onSecondaryContainer,
            fontSize: 18,
          ),
        ),
        snackBarTheme: SnackBarThemeData(
          actionTextColor: Colors.blueAccent,
          contentTextStyle: const TextStyle(
            color: Colors.white,
          ),
        ),
        dialogTheme: DialogThemeData(
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          contentTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 40,
        ),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: const TextStyle(color: Colors.white),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.black),
          ),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.white),
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.white),
          ),
        ),
        dialogBackgroundColor: Colors.white,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
          ),
        ),
      ),
      theme: ThemeData().copyWith(
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
          centerTitle: true,
        ),
        colorScheme: kColorScheme,
        cardTheme: CardThemeData().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(70),
            ),
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge: TextStyle(
            fontWeight: FontWeight.w500,
            color: kColorScheme.onSecondaryContainer,
            fontSize: 18,
          ),
          titleMedium: TextStyle(
            fontWeight: FontWeight.w500,
            color: kColorScheme.onSecondaryContainer,
            fontSize: 18,
          ),
        ),
        dialogTheme: DialogThemeData(
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
          contentTextStyle: TextStyle(color: Colors.black, fontSize: 15),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
          size: 40,
        ),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: const TextStyle(color: Colors.black),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.black),
          ),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.black),
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.black),
          ),
        ),
        dialogBackgroundColor: Colors.black,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
          ),
        ),
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: Expenses(),
    ),
  );
}
