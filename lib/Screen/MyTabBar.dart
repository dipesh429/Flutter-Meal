import 'package:flutter/material.dart';

import './CategoryScreen.dart';
import './FavoriteScreen.dart';
import '../widget/MyDrawer.dart';

class MyTabBar extends StatefulWidget {
  @override
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {

  final _pages = [
    {'title': 'Category', 'page': CategoryScreen()},
    {'title': 'Category', 'page': FavouriteScreen()}
  ];
  
  var currentTabIndex = 0;

  _selected(int index) {
    this.setState(() {
      currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meal Soup'),
      ),
      drawer: MyDrawer(),
      body: _pages[currentTabIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selected,
        currentIndex: currentTabIndex,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        items: [
          BottomNavigationBarItem(
              title: Text('Category'), icon: Icon(Icons.category)),
          BottomNavigationBarItem(
              title: Text('Favorite'), icon: Icon(Icons.favorite)),
        ],
      ),
    );
  }
}
