import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model1.dart';
import 'package:news_app_ui_setup/services/news_service1.dart';
import 'package:news_app_ui_setup/widgets/new_list_view1.dart';

class NewsListViewBuilder1 extends StatefulWidget {
  const NewsListViewBuilder1({
    super.key,
    required this.category,
  });
  final String category;
  @override
  State<NewsListViewBuilder1> createState() => _NewsListViewBuilder1State();
}

class _NewsListViewBuilder1State extends State<NewsListViewBuilder1> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService1(Dio()).getTopHeadLines(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel1>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView1(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Center(
                child: Text(
                  'Oops error, close and delete it',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(
                  color: Colors.orange,
                ),
              ),
            );
          }
        });
  }
}
