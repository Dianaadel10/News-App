import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_12/lib/lib/services/news_services.dart';
import 'package:flutter_application_12/lib/lib/widgets/news_list_view.dart';



class NewsListViewBuilder extends StatelessWidget {
  const NewsListViewBuilder({super.key, required this.categories});

  final String categories;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: NewsApi(Dio()).getNews(category: categories),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(articalnews: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverFillRemaining(
              child: Center(
                child: Text(
                  'oops, there is no data right now come later',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            );
          } else {
            return const SliverFillRemaining(
              child: Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              ),
            );
          }
        });
  }
}
