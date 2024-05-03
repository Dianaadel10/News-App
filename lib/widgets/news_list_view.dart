import 'package:flutter/material.dart';
import 'package:flutter_application_12/lib/lib/models/article_model.dart';
import 'package:flutter_application_12/lib/lib/widgets/news_tile.dart';



class NewsListView extends StatelessWidget {
  
final List<Article> articalnews;
  const NewsListView({
    super.key, required this.articalnews,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articalnews.length,
        (context, index) {
          return  NewsTile(articlemodel:articalnews[index],);
        },
      ),
    );
  }
}
