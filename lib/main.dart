import 'package:flutter/material.dart';
import 'package:guess_me/currPage.dart';
import 'package:flutter/services.dart';

final kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(54, 0, 50, 255));

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Guess Me'),
          centerTitle: true,
          titleSpacing: 4,
        ),
        body: const CurrPage(),
      ),
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xff021526),
        appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kColorScheme.onPrimaryContainer,
            foregroundColor: kColorScheme.primaryContainer),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.onPrimaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                color: kColorScheme.onSecondaryContainer,
              ),
              bodySmall: TextStyle(
                color: kColorScheme.onSecondary,
              ),
            ),
      ),
    ),
  );
}
