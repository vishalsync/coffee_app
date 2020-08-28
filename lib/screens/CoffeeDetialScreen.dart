import 'package:flutter/material.dart';

//widgets
import '../widgets/TopHeader.dart';
import '../widgets/CoffeeHeading.dart';
import '../widgets/CoffeeList.dart';
import '../widgets/CustomBottomNavigation.dart';


class CoffeeDetialScreen extends StatelessWidget {
  static const routeName = 'coffee_detial_screen';
  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context).settings.arguments as Map;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/bg.png'),
                  fit: BoxFit.cover
                ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0),
                  )
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(Icons.arrow_back_ios)
                        ),
                        SizedBox(width: 80.0,),
                        Text(
                          arg['title'],
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 23.0,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                    ),
                    padding: const EdgeInsets.all(80.0),
                    child: Image.asset(arg['imgUrl']),
                  ),               
                ],
              ),
            ),
             
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Coffe namer', style: TextStyle(fontSize: 30.0),),
                      Text(
                        'rs100', 
                        style: TextStyle(
                          fontSize: 30.0, 
                          color: Color(0xffCF9775),
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xffCF9775),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25.0),
                            bottomLeft: Radius.circular(25.0),
                          )

                        ),
                        child: IconButton(
                          color: Colors.white,
                          icon: Icon(Icons.remove),
                          onPressed: () {}
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('1', style: TextStyle(fontSize: 30.0),),
                      ),
                      Container(
                       decoration: BoxDecoration(
                          color: Color(0xffCF9775),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25.0),
                            bottomRight: Radius.circular(25.0),
                          )

                        ),
                       child: IconButton(
                         color: Colors.white,
                         icon: Icon(Icons.add),
                         onPressed: () {}
                       ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text('Size', style: TextStyle(fontSize: 30.0),),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(

                children: [
                  Image.asset(arg['imgUrl'], width: 40, height: 40,),
                  Image.asset(arg['imgUrl'], width: 50, height: 50,),
                  Image.asset(arg['imgUrl'], width: 60, height: 60,),
                ],
              ),
            ),
          
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0)
                    ),
                    padding: const EdgeInsets.all(20.0),
                    color: Color(0xffCF9775),
                    child: Text(
                      'Add to cart', 
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0
                      ),
                    ),
                    onPressed: (){},
                  ),
                ],
              ),
            )
          
          ],
        ),
      ),
    );
  }
}
