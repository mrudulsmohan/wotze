import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    // Access the width and height of the screen
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    return SafeArea(
        child: AppBar(
            backgroundColor: Colors.white,
            //  title: Row(
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     children: [
            //       Padding(
            //         padding: const EdgeInsets.all(2.0),
            //         child: Image.asset(
            //           'lib/assets/images/wotze_icon 1.png',
            //           width: screenWidth * 0.1275,
            //           height: screenHeight * 0.0701,
            //         ),
            //       ),
            //     ],
            //   ),
            actions: [
          Image.asset(
            'lib/assets/images/wotze_icon 1.png',
            width: screenWidth * 0.1275,
            height: screenHeight * 0.0701,
          ),
          SizedBox(
            width: screenWidth * 0.05,
          )
        ]));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
