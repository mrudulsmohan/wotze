import 'package:flutter/material.dart';

class TopPart extends StatelessWidget {
  const TopPart({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenHeight = screenSize.height;
    double screenWidth = screenSize.width;

    return Container(
      width: screenWidth,
      height: screenHeight * 0.175,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Delicious',
            style: TextStyle(
                fontSize: 34, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          SizedBox(height: 4.0),
          Text(
            'food for you',
            style: TextStyle(
                fontSize: 34, fontWeight: FontWeight.w400, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
