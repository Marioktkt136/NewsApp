import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/Models/news_article_model.dart';
import 'package:news_app/Services/News_services.dart';
import 'package:news_app/Widgets/categories_view.dart';
import 'package:news_app/Widgets/news_list_view.dart';
import 'package:news_app/Widgets/news_list_view_builder.dart';
// import 'package:news_app/Widgets/news_tiles.dart';
// import 'package:news_app/Widgets/category_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        // actions: [IconButton(onPressed: () => , icon: Icon(Icons.refresh),],
        // centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "A",
              style: TextStyle(
                  color: Color.fromARGB(255, 2, 42, 110),
                  fontWeight: FontWeight.w700),
            ),
            Text(
              "News",
              style: TextStyle(
                  color: Colors.orangeAccent, fontWeight: FontWeight.w700),
            ),
            Text(
              "ia",
              style: TextStyle(
                  color: Color.fromARGB(255, 2, 42, 110),
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            NewsListViewBuilder(
              category: 'general',
            ),
          ],
        ),
      ),
    );
  }
}
