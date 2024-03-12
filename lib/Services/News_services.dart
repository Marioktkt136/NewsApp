import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:news_app/Models/news_article_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);
  Future<List<NewsArticleModel>> getNews() async {
    var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apikey=c271820e7cb5428bad2471cac367793a&country=us');
    // ignore: unused_local_variable
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    // ignore: non_constant_identifier_names
    List<NewsArticleModel> NewsArticleList = [];

    for (var article in articles) {
      NewsArticleModel articleModel = NewsArticleModel(
        author: article['author'],
        image: article['urlToImage'],
        title: article['title'],
        subtitle: article['description'],
      );
      NewsArticleList.add(articleModel);
    }
    return NewsArticleList;
  }
}
