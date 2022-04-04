import 'package:anime_app/features/base/view.dart';
import 'package:anime_app/features/home/view.dart';
import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/services.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: FlexThemeData.dark(
        scheme: FlexScheme.indigo,
      ),
      theme: FlexThemeData.light(
        scheme: FlexScheme.indigo,
      ),
      themeMode: ThemeMode.dark,
      home: const BaseView(),
    );
  }
}
