import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/article_model1.dart';

class NewsService1 {
  final Dio dio;

  NewsService1(this.dio);

  Future<List<ArticleModel1>> getTopHeadLines(
      {required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=0b9d900dea124bcb91601befed2aecc0&category=$category');
      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel1> articlesList = [];

      for (var article in articles) {
        ArticleModel1 articleModel1 = ArticleModel1.fromJson(article);

        articlesList.add(articleModel1);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
