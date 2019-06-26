import 'package:flutter/material.dart';
import 'strings.dart';
import 'apodwidget.dart';

void main() => runApp(APODFlutter());

class APODFlutter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: Strings.appTitle,
      theme: new ThemeData(primaryColor: Colors.blueAccent.shade100),
      home: new APODWidget()
    );
  }
}
