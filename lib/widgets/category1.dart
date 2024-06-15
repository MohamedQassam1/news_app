import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model1.dart';

import 'package:news_app_ui_setup/views/category_view1.dart';

class CategoryCard1 extends StatelessWidget {
  const CategoryCard1({super.key, required this.category});
  final CategoryModel1 category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CategoryView1(
                category: category.categoryName,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Container(
          height: 100,
          width: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(category.image))),
          child: Center(
              child: Text(
            category.categoryName,
            style: const TextStyle(
                fontSize: 19, fontWeight: FontWeight.bold, color: Colors.white),
          )),
        ),
      ),
    );
  }
}
