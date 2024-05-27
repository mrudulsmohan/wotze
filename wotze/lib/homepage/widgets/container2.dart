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
      'Recommendation 3',
      // Add more texts as needed
    ];
    final List<String> recommendationTexts2 = [
      'N2,300.99',
      'N1,900',
      'Recommendation 3',
      // Add more texts as needed
    ];

    return Container(
      width: screenWidth,
      height: screenHeight,
      // padding: const EdgeInsets.all(16.0), // Padding around the container
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
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Transform.translate(
                            offset:
                                const Offset(0, -15), // Move the image upward
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(16.0),
                                topRight: Radius.circular(16.0),
                              ),
                              child: Image.asset(
                                recommendationImages[index],
                                width: screenWidth * 0.6,
                                height: screenHeight * 0.16,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.symmetric(horizontal: 13.0),
                            child: Column(
                              children: [
                                Text(
                                  recommendationTexts[index],
                                  style: const TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 10.0),
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
