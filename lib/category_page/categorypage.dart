import 'package:flutter/material.dart';
import 'package:wotze/category_page/widget/common_appbar.dart';
import 'package:wotze/category_page/widget/gridcontainer.dart';

class Categorypage extends StatelessWidget {
  const Categorypage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CommonAppBar(),
      body: Column(
        children: [FoodCategories()],
      ),
    );
  }
}
