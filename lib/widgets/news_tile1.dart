import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model1.dart';

class NewsTile1 extends StatelessWidget {
  const NewsTile1({super.key, required this.articleModel1});
  final ArticleModel1 articleModel1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              articleModel1.image ??
                  'https://via.placeholder.com/150', // Use a valid placeholder image URL
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (BuildContext context, Object exception,
                  StackTrace? stackTrace) {
                return Image.asset(
                  'assets/images/images.png', // Local placeholder image path
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            articleModel1.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black87),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            articleModel1.subTitle ?? '....',
            maxLines: 2,
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          )
        ],
      ),
    );
  }
}
