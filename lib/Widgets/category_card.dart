import 'package:flutter/material.dart';
import 'package:news_app/Models/categories_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoriesModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        // height: 00,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black,
          image: (DecorationImage(
            image: AssetImage(category.image),
            fit: BoxFit.fill,
          )),
        ),
        // color: Colors.black,
        child: Center(
          child: Text(
            category.categoryName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
