import 'package:flutter/material.dart';
import 'package:rutorrentmobile/home.dart';
import 'package:rutorrentmobile/theme/custom_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: customTheme, // Custom theme defined by custom_theme.dart -> switch between light/dark mode
      home: Home(),    // Main App Home
    );
  }
}

