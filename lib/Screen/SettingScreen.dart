import 'package:flutter/material.dart';
import 'package:my_app/widget/MyDrawer.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: AppBar(
          title: Text('Setting'),
        ),
        drawer: MyDrawer(),
        body: ListView(children: <Widget>[
          SwitchListTile(value: true, onChanged: (bool){}, title: Text('Vegetarian'),subtitle: Text('Only include Vegetarian meals'),),
          SwitchListTile(value: false, onChanged: (bool){}, title: Text('NonVeg'),subtitle: Text('Only include Non Vegetarian meals')),
          SwitchListTile(value: false, onChanged: (bool){}, title: Text('NonVeg'),subtitle: Text('Only include vegan meals')),

        ]));
  }
}
