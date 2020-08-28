import 'package:flutter/material.dart';


class TopHeader extends StatelessWidget {
  const TopHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GestureDetector(
          onTap: (){},
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image(image: AssetImage('asset/menu.png'),),
          ),
        ),
        IconButton(
          icon: Icon(Icons.search),
          onPressed: (){},
        ),
      ],
    );
  }
}
