import 'package:flutter/material.dart';


class CustomBottomNavigation extends StatefulWidget {

  @override
  _CustomBottomNavigationState createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {

  int _currentIndex = 0;

  void _navigator() {

  }


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          GestureDetector(
            child: Image.asset('asset/home.png'),
            onTap: () {},
          ),
          GestureDetector(
            child: Image.asset('asset/location.png'),
            onTap: () {},
          ),
          GestureDetector(
            child: Image.asset('asset/store.png'),
            onTap: () {},
          ),
          GestureDetector(
            child: Image.asset('asset/profile.png'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
