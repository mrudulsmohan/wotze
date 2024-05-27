import 'package:flutter/material.dart';
import 'package:wotze/category_page/categorypage.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;

    return Container(
      width: screenWidth,
      height: screenHeight * 0.05,
      decoration: const BoxDecoration(color: Colors.white),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Categories',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
          Image.asset(
            'lib/assets/images/Rectangle 8.png',
            // height: screenHeight * 0.03,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Categorypage();
                },
              ));
            },
            child: const Text(
              'See more',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
