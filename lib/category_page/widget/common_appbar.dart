import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wotze/homepage/home_page.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    // Size screenSize = MediaQuery.of(context).size;

    // Access the width and height of the screen
    // double screenWidth = screenSize.width;
    // double screenHeight = screenSize.height;
    return SafeArea(
        child: AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      title: Row(children: [
        IconButton(
          icon: Icon(Icons.arrow_back_ios), // Replace with your chevron icon
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return Homescreen();
              },
            ));
            // Implement navigation or other action
          },
        ),
        const Center(
          child: Padding(
            padding: EdgeInsets.only(left: 65),
            child: Text(
              'Food Categories',
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ]),
    ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
