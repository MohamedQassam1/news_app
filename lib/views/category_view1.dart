import 'package:flutter/material.dart';

import 'package:news_app_ui_setup/widgets/news_list_view_builder1.dart';

class CategoryView1 extends StatelessWidget {
  const CategoryView1({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder1(
            category: category,
          ),
        ],
      ),
    );
  }
}
