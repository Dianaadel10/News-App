

// ignore: depend_on_referenced_packages
import 'package:dio/dio.dart';
import 'package:flutter_application_12/lib/lib/models/article_model.dart';




class NewsApi {
  final Dio dio;
  NewsApi( this.dio);

  Future<List<Article>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=47ca6a4028e141e7a62d53af769b430e');

      Map<String, dynamic> jsondata = response.data;
      List<dynamic> articles = jsondata['articles'];
      List<Article> articlesList = [];

      for (var e in articles) {
        Article ArticlesModel = Article.fromJson(e);
        articlesList.add(ArticlesModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}