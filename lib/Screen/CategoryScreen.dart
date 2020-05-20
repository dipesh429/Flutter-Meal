import 'package:flutter/material.dart';

import '../dummy_data.dart';

class CategoryScreen extends StatelessWidget {
  _categoryTapped(context, category) {
    Navigator.of(context).pushNamed('/category', arguments:{
      'id': category.id,
      'title':category.title
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300, childAspectRatio: 3 / 2.5),
      itemBuilder: (ctx, index) {
        return InkWell(
          onTap: () => _categoryTapped(context, DUMMY_CATEGORIES[index]),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: DUMMY_CATEGORIES[index].color,
            elevation: 15,
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                DUMMY_CATEGORIES[index].title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        );
      },
      itemCount: DUMMY_CATEGORIES.length,
    );
  }
}
