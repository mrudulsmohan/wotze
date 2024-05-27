import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return searchBar(); // Call the searchBar function
  }

  Widget searchBar() {
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: 16.0), // Add margin to both sides
      child: TextField(
        decoration: const InputDecoration(
          filled: true,
          fillColor: Color.fromRGBO(212, 212, 212, 1),
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.black),
          prefixIcon: Icon(Icons.search, color: Colors.black),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(
                color: Color.fromARGB(255, 243, 247, 251), width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(color: Colors.blue, width: 2.0),
          ),
        ),
        onChanged: (value) {
          // Handle search input changes
        },
      ),
    );
  }
}
