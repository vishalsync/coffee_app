import 'package:flutter/material.dart';


const textStyle = TextStyle(
    color: Color(0xffB98875),
    fontSize: 30.0,
    fontWeight: FontWeight.bold
);


class CoffeeHeading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 20.0),
          child: RichText(
            text: TextSpan(
              text: 'It\'s Great ',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 35.0
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Day for',
                  style: textStyle,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text('Coffee.', style: textStyle,),
        ),
      ],
    );
  }
}
