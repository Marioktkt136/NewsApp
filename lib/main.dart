import 'dart:io';

import 'package:flutter/material.dart';
import 'package:news_app/Models/import_image_network_model.dart';
import 'package:news_app/Views/home_view.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
