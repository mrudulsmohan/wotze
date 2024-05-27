import 'package:flutter/material.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;

    final List<String> recommendationImages = [
      'lib/assets/images/Mask Group.png',
      'lib/assets/images/Mask Group (1).png',
      // Add more image paths as needed
    ];

    final List<String> recommendationTexts = [
      'Spicy fish sauce',
      'Veggie tomato mix',
      // Add more texts as needed
    ];
    final List<String> recommendationTexts2 = [
      'N2,300.99',
      'N1,900',
      // Add more texts as needed
    ];

    return Container(
      width: screenWidth,
      margin: EdgeInsets.symmetric(horizontal: 8),
      color: Colors.white, // Background color
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Recommendations',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 25.0),
          Container(
            height: screenHeight * 0.3, // Height for the ListView
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recommendationImages.length,
              itemBuilder: (context, index) {
                return Container(
                  width:
                      screenWidth * 0.5, // Width for each recommendation item
                  margin: EdgeInsets.symmetric(
                      horizontal: 8), // Margin between items
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.0),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.grey.withOpacity(0.5),
                    //     spreadRadius: 2,
                    //     blurRadius: 10,
                    //     offset: Offset(0, 3), // Shadow position
                    //   ),
                    // ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: screenWidth * 0.25,
                        height: screenHeight * 0.25,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(100)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Image.asset(
                            recommendationImages[index],
                            width: screenWidth * 0.5,
                            height: screenHeight * 0.16,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 13.0, vertical: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              recommendationTexts[index],
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            const SizedBox(height: 5.0),
                            Text(
                              recommendationTexts2[index],
                              style: const TextStyle(
                                color: Color.fromRGBO(253, 216, 53, 1),
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
