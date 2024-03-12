import "package:dio/dio.dart";
import 'package:flutter/material.dart';
import 'package:news_app/Models/news_article_model.dart';
import 'package:news_app/Services/News_services.dart';
import 'package:news_app/Widgets/news_tiles.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
    required this.articles,
  });

  final List<NewsArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return NewsTile(
            articleModel: articles[index],
          );
        },
      ),
    );
  }
}
