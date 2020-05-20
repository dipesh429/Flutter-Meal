import 'package:flutter/material.dart';
import '../dummy_data.dart';

class CategoryIndividualScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeInfo =
        ModalRoute.of(context).settings.arguments as Map<String, Object>;
    final meals = DUMMY_MEALS
        .where((meal) => meal.categories.contains(routeInfo['id']))
        .toList();

    return Scaffold(
      appBar: AppBar(title: Text(routeInfo['title'])),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            margin: EdgeInsets.all(20),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                      child: Image.network(meals[index].imageUrl,
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover),
                    ),
                    Positioned(
                        bottom: 10,
                        right: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          padding: EdgeInsets.symmetric(vertical:10,horizontal: 20),
                          color: Colors.black.withOpacity(0.4),
                          child: Text(meals[index].title,
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              )),
                        )),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.access_time),
                        Icon(Icons.headset),
                        Icon(Icons.attach_money)
                      ]),
                )
              ],
            ),
          );
        },
        itemCount: meals.length,
      ),
    );
  }
}
