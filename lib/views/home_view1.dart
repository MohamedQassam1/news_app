import 'package:flutter/material.dart';

import 'package:news_app_ui_setup/widgets/categories_list_view1.dart';
import 'package:news_app_ui_setup/widgets/news_list_view_builder1.dart';

class HomeView1 extends StatelessWidget {
  const HomeView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('News', style: TextStyle(color: Colors.black)),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoriesListView1()),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            NewsListViewBuilder1(
              category: 'general',
            ),
          ],
        ),
      ),
    );
  }
}
