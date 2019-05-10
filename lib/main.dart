// NOTE: Dart style guide:
// https://www.dartlang.org/guides/language/effective-dart/style

// NOTE: Flutter is
// 1) An SDK
// 2) A Dart Framework

import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

import './pages/auth.dart';

// NOTE: Use the following syntax when there is just a line of code.
// main() => runApp(MyApp());

main() {
  // NOTE: The following lines of code allow us to debug the UI.
  // Rendering package needs to be imported.
  //debugPaintSizeEnabled = true;
  //debugPaintBaselinesEnabled = true;
  //debugPaintPointersEnabled = true;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  /// Function: Build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // NOTE: The following line is used to debug UI.
      // debugShowMaterialGrid: true,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple,
      ),
      home: AuthPage(),
    );
  }
}
