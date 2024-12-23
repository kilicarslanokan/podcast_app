import 'package:flutter/material.dart';

class CategoryButtons extends StatelessWidget {
  final List<String> categories;

  CategoryButtons({required this.categories});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: categories.map((category) {
          return Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 37, 40, 54),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              ),
              child: Text(
                category,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
