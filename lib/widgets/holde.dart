// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app_ui_setup/mywidgets/article_model1.dart';
// import 'package:news_app_ui_setup/mywidgets/news_service1.dart';
// import 'package:news_app_ui_setup/mywidgets/news_tile1.dart';

// class NewsListView1 extends StatefulWidget {
//   const NewsListView1({
//     super.key,
//   });

//   @override
//   State<NewsListView1> createState() => _NewsListView1State();
// }

// class _NewsListView1State extends State<NewsListView1> {
//   List<ArticleModel1> articles = [];
//   bool isLoading = true;
//   @override
//   void initState() {
//     super.initState();

//     GetGenrlNews();
//   }

//   Future<void> GetGenrlNews() async {
//     articles = await NewsService1(Dio()).getGeneralNews();
//     isLoading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? const SliverToBoxAdapter(
//             child: Center(
//                 child: CircularProgressIndicator(
//             color: Colors.orange,
//           )))
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(
//               childCount: articles.length,
//               (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.only(bottom: 22),
//                   child: NewsTile1(
//                     articleModel1: articles[index],
//                   ),
//                 );
//               },
//             ),
//           );
//     // return ListView.builder(
    //     shrinkWrap: true,
    //     physics: const NeverScrollableScrollPhysics(),
    //     itemCount: 10,
    //     itemBuilder: (context, index) {
    //       return Padding(
    //         padding: const EdgeInsets.only(bottom: 22),
    //         child: const NewsTile1(),
    //       );
    //     });
//   }
// }


//==================================================================================

// return ListView.builder(
    //     shrinkWrap: true,
    //     physics: const NeverScrollableScrollPhysics(),
    //     itemCount: 10,
    //     itemBuilder: (context, index) {
    //       return Padding(
    //         padding: const EdgeInsets.only(bottom: 22),
    //         child: const NewsTile1(),
    //       );
    //     });

    //=====================================================================
    // return isLoading
    //     ?
    //     : articles.isNotEmpty
    //   ?
    //         :

    //         