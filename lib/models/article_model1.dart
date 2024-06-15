class ArticleModel1 {
  final String? image;
  final String title;
  final String? subTitle;

  ArticleModel1(
      {required this.image, required this.title, required this.subTitle});

  factory ArticleModel1.fromJson(json) {
    return ArticleModel1(
      image: json['urlToImage'],
      title: json['title'],
      subTitle: json['description'],
    );
  }
}
