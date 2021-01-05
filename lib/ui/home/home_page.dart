import 'package:flutter/material.dart';
import 'package:switch_theme/ui/preference/preference.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PreferencePage()));
              })
        ],
      ),
      body: Center(
        child: Container(
          child: Text(
            "Home",
            style: Theme.of(context).textTheme.display1,
          ),
        ),
      ),
    );
  }
}
