import 'package:flutter/material.dart';
import 'package:wotze/homepage/widgets/Uppercontainer.dart';
import 'package:wotze/homepage/widgets/appbar.dart';
import 'package:wotze/homepage/widgets/bottomnavbar.dart';
import 'package:wotze/homepage/widgets/categories.dart';
import 'package:wotze/homepage/widgets/container.dart';
import 'package:wotze/homepage/widgets/container2.dart';
import 'package:wotze/homepage/widgets/searchbar.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: MyAppBar(),
        drawer: Drawer(), // Using Drawer widget instead of Container
        body: SingleChildScrollView(
          child: Column(
            children: [
              TopPart(),
              CustomSearchBar(),
              Category(),
              Foods(),
              Recommendations(),
              // Pass the image paths here
            ],
          ),
        ),
        bottomNavigationBar: Bottombar());
  }
}
