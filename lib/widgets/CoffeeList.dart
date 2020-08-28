import 'package:coffeeflutter/screens/CoffeeDetialScreen.dart';
import 'package:flutter/material.dart';


const textStyle = TextStyle(
    color: Color(0xffB98875),
    fontSize: 30.0,
    fontWeight: FontWeight.bold
);


class CoffeeList extends StatelessWidget {

  final String imgUrl;
  final String title;
  final Function onPressd;
  CoffeeList({@required this.imgUrl, @required this.title, this.onPressd});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: Container(
            child: Image.asset(imgUrl),
          width: 40.0,
          height: 40.0,
        ),
        title: Text(title, style: TextStyle(fontSize: 20.0),),
        trailing: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed(
                CoffeeDetialScreen.routeName,
              arguments: {
                'title': title,
                'imgUrl': imgUrl
                }
            );
          },
          icon: Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
