import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'apod.dart';
import 'strings.dart';

class APODState extends State<APODWidget> {
  Apod apod;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(Strings.appBarTitle),
        ),
        body: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              new Text(apod.title),
              new Image.network(apod.url),
              new Text(apod.explanation)
            ]));
  }

  _loadData() async {
    String dataUrl = "https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY";
    http.Response response = await http.get(dataUrl);
    setState(() {
      var apodJson = json.decode(response.body);
      apod =
          new Apod(apodJson["title"], apodJson["explanation"], apodJson["url"]);
    });
  }
}

class APODWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new APODState();
  }
}
