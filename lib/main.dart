import 'package:flutter/material.dart';

import 'package:expense_tracker/widgets/expenses.dart';

void main() {
  var kColorScheme = ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(255, 40, 243, 199),
  );
  var kDarkColorScheme = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 5, 5, 5),
  );
  runApp(
    MaterialApp(
      darkTheme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kDarkColorScheme,
      ),
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          color: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),
        snackBarTheme: SnackBarThemeData(
          backgroundColor: kColorScheme.onInverseSurface,
        ),
        cardTheme: const CardTheme().copyWith(
          //color: kColorScheme.outlineVariant,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          shadowColor: kColorScheme.onBackground,
          surfaceTintColor: kColorScheme.onSecondary,
          shape: Border.all(
              //color: kColorScheme.outlineVariant,
              //strokeAlign: BorderSide.strokeAlignCenter,
              //style: BorderStyle.solid,
              //width: 10,
              ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                color: kColorScheme.onSecondaryContainer,
                //fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              titleMedium: TextStyle(
                color: kColorScheme.onTertiaryContainer,
                fontSize: 15,
                fontWeight: FontWeight.w800,
              ),
            ),
      ),
      themeMode: ThemeMode.system,
      home: Expenses(),
    ),
  );
}
