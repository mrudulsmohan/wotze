import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottombar extends StatelessWidget {
  const Bottombar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(0, 0, 0, 0.6), // Black color with 50% opacity
      padding: EdgeInsets.symmetric(vertical: 10), // Optional padding
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(
            width: 24, // specify width
            height: 44, // specify height
            child:
                Image.asset('lib/assets/images/Frame.png', fit: BoxFit.contain),
          ),
          SizedBox(
            width: 24, // specify width
            height: 24, // specify height
            child: Image.asset('lib/assets/images/Vector (7).png',
                fit: BoxFit.contain),
          ),
          SizedBox(
            width: 24, // specify width
            height: 24, // specify height
            child: Image.asset('lib/assets/images/Vector (8).png',
                fit: BoxFit.contain),
          ),
          SizedBox(
            width: 24, // specify width
            height: 24, // specify height
            child: Image.asset('lib/assets/images/Frame (1).png',
                fit: BoxFit.contain),
          ),
        ],
      ),
    );
  }
}
