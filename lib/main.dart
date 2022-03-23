import 'package:flutter/material.dart';
import 'package:submission_flutter_dasar/color_scheme.dart';
import 'package:submission_flutter_dasar/pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          colorSchemeSeed: seed,
          colorScheme: lightColorScheme,
        ),
        darkTheme: ThemeData(
          colorSchemeSeed: seed,
          colorScheme: darkColorScheme,
        ),
        debugShowCheckedModeBanner: false,
        home: const HomePage());
  }
}
