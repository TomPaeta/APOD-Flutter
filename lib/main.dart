import 'package:flutter/material.dart';
import 'strings.dart';
import 'apodwidget.dart';
import 'favoriteswidget.dart';

void main() => runApp(APODFlutter());

class APODFlutter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: Strings.appTitle,
        theme: new ThemeData(primaryColor: Colors.blueAccent.shade100),
        home: new HomePage(title: Strings.appTitle)
    );
  }
}

class HomePage extends StatelessWidget {
  final String title;

  HomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: APODWidget(),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('Nasa APOD'),
            ),
            ListTile(
              title: Text('APOD'),
              subtitle: Text('Astronomy Picture Of the Day'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Favorites'),
              subtitle: Text('Your favorites pictures'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) {
                      return new FavoriteWidget();
                    }));
              },
            )
          ],
        ),
      ),
    );
  }
}