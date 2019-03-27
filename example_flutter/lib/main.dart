import 'package:flutter/material.dart';
import 'package:example_flutter/pages/welcome.dart';
import 'package:example_flutter/themeing/ide_theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<IDETheme>(
      value: IDETheme.standard(),
      updateShouldNotify: (it, i2) => false,
      child: new MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Widget Maker',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TutorialWelcome(),
      ),
    );
  }
}


