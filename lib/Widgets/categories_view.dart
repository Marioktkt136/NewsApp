import 'package:flutter/material.dart';
import 'package:news_app/Models/categories_model.dart';
import 'package:news_app/Widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoriesModel> categories = const [
    CategoriesModel(
      image: 'assets/business.jpg',
      categoryName: 'Business',
    ),
    CategoriesModel(
      image: 'assets/sports.jpg',
      categoryName: 'sports',
    ),
    CategoriesModel(
      image: 'assets/entertaiment.avif',
      categoryName: 'entertainment',
    ),
    CategoriesModel(
      image: 'assets/science.avif',
      categoryName: 'science',
    ),
    CategoriesModel(
      image: 'assets/technology.jpeg',
      categoryName: 'technology',
    ),
    CategoriesModel(
      image: 'assets/health.avif',
      categoryName: 'health',
    ),
    CategoriesModel(
      image: 'assets/general.jpg',
      categoryName: 'general',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return CategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
