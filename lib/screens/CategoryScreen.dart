import 'package:flutter/material.dart';

//widgets
import '../widgets/TopHeader.dart';
import '../widgets/CoffeeHeading.dart';
import '../widgets/CoffeeList.dart';
import '../widgets/CustomBottomNavigation.dart';


class CategoryScreen extends StatelessWidget {
  static const routeName = 'category_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
       child: Container(
         decoration: BoxDecoration(
           image: DecorationImage(
             image: AssetImage('asset/bg.png'),
             fit: BoxFit.cover
           ),
         ),
         child: Column(
           children: <Widget>[
             Expanded(
               child: Container(
                 child: SingleChildScrollView(
                   child: Column(
                     children: <Widget>[
                       TopHeader(),
                       CoffeeHeading(),
                       SizedBox(height: 25.0,),
                       CoffeeList(imgUrl: 'asset/Cappuccino.png', title: 'Cappuccino',),
                       CoffeeList(imgUrl: 'asset/Espresso.png', title: 'Espresso',),
                       CoffeeList(imgUrl: 'asset/latte.png', title: 'latte',),
                       CoffeeList(imgUrl: 'asset/macciato.png', title: 'Macciato',),
                       CoffeeList(imgUrl: 'asset/Mocha.png', title: 'Mocha',),
                     ],
                   ),
                 ),
               ),
             ),
             CustomBottomNavigation(),
           ],
         ),
       ),
     ),
    );
  }
}
