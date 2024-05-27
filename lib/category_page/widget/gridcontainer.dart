import 'package:flutter/material.dart';

class FoodCategories extends StatelessWidget {
  const FoodCategories({super.key});

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
      'lib/assets/images/drink_svgrepo.com.png',
      'lib/assets/images/food-round_svgrepo.com.png',
      'lib/assets/images/Group (1).png',
      'lib/assets/images/pasta_svgrepo.com.png',
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
      'Drink',
      'Snacks',
      'Foods',
      'Foods',
      'Drink',
      'Snacks',
      'Foods',
      'Foods',
    ];

    return Container(
      width: screenWidth,
      height: screenHeight * 0.89,
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
      color: const Color.fromARGB(255, 255, 254, 254),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16.0), // Space between the title and grid
          Expanded(
            child: GridView.builder(
              itemCount: imagePaths.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // Number of items per row
                crossAxisSpacing: 10.0, // Horizontal spacing between items
                mainAxisSpacing: 10.0, // Vertical spacing between items
                childAspectRatio: 0.66, // Aspect ratio of each item
              ),
              itemBuilder: (context, index) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: screenWidth * 0.23,
                      height: screenHeight * 0.141,
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
                    const SizedBox(height: 15.0),
                    Text(
                      texts[index],
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
