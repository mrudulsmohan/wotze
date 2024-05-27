import 'package:flutter/material.dart';

class Foods extends StatelessWidget {
  const Foods({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;

    final List<String> imagePaths = [
      'lib/assets/images/drink_svgrepo.com.png',
      'lib/assets/images/food-round_svgrepo.com.png',
      'lib/assets/images/Group (1).png',
      'lib/assets/images/pasta_svgrepo.com.png',
    ];

    final List<String> texts = [
      'Drink',
      'Snacks',
      'Foods',
      'Foods',
    ];

    return Container(
      margin: EdgeInsets.only(left: screenWidth * 0.05),
      height: screenHeight * 0.22,
      width: screenWidth,
      color: const Color.fromARGB(255, 255, 254, 254),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: screenWidth * 0.05),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: screenWidth * 0.255,
                  height: screenHeight * 0.153,
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(253, 216, 53, 1),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Image.asset(
                    imagePaths[index],
                    width: 80.0,
                    height: 80.0,
                  ),
                ),
                const SizedBox(
                    height: 8.0), // Adjusted height for better spacing
                Text(
                  texts[index],
                  style: const TextStyle(
                      fontSize: 17, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
