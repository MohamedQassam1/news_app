import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model1.dart';

import 'package:news_app_ui_setup/widgets/news_tile1.dart';

class NewsListView1 extends StatelessWidget {
  final List<ArticleModel1> articles;

  const NewsListView1({super.key, required this.articles});
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: NewsTile1(
              articleModel1: articles[index],
            ),
          );
        },
      ),
    );
  }
}
