import 'package:flutter/material.dart';

class FavoriteState extends State<FavoriteWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Text('Favorites'),
      ),
    );
  }

}

class FavoriteWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new FavoriteState();
  }
}