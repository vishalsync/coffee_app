import 'package:flutter/material.dart';

//Screens
import './screens/CategoryScreen.dart';
import './screens/CoffeeDetialScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: CategoryScreen.routeName,
      routes: {
        CategoryScreen.routeName: (context) => CategoryScreen(),
        CoffeeDetialScreen.routeName: (context) => CoffeeDetialScreen(),
      },
    );
  }
}
