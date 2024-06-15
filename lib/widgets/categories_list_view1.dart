import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model1.dart';
import 'package:news_app_ui_setup/widgets/category1.dart';

class CategoriesListView1 extends StatelessWidget {
  const CategoriesListView1({
    super.key,
  });
  final List<CategoryModel1> categories = const [
    CategoryModel1(
      image: 'assets/business.avif',
      categoryName: 'Business',
    ),
    CategoryModel1(
      image: 'assets/entertaiment.avif',
      categoryName: 'Entertainment',
    ),
    CategoryModel1(
      image: 'assets/health.avif',
      categoryName: 'Health',
    ),
    CategoryModel1(
      image: 'assets/science.avif',
      categoryName: 'Science',
    ),
    CategoryModel1(
      image: 'assets/technology.jpeg',
      categoryName: 'Technology',
    ),
    CategoryModel1(
      image: 'assets/sports.avif',
      categoryName: 'Sports',
    ),
    CategoryModel1(
      image: 'assets/general.avif',
      categoryName: 'General',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard1(
              category: categories[index],
            );
          }),
    );
  }
}
