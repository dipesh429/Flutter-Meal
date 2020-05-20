import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _drawerClicked(String route) {
      Navigator.of(context).pushReplacementNamed(route);
    }

    return Drawer(
      child: ListView(children: [
        Container(
          height: 100,
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.all(10),
          color: Theme.of(context).primaryColor.withOpacity(0.5),
          child: Text('FOODMANDU',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.red)),
        ),
        ListTile(
          leading: Icon(Icons.restaurant, size: 35),
          title: Text('Meals', style: TextStyle(fontSize: 18)),
          onTap: ()=>_drawerClicked('/'),
        ),
        ListTile(
          leading: Icon(Icons.settings, size: 35),
          title: Text('Settings', style: TextStyle(fontSize: 18)),
          onTap: ()=>_drawerClicked('/setting'),
        )
      ]),
    );
  }
}
