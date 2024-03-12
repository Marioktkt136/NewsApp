// import 'dart:io';

import 'package:flutter/material.dart';
import 'package:news_app/Services/News_services.dart';
// import 'package:news_app/Models/import_image_network_model.dart';
import 'package:news_app/Views/home_view.dart';
import 'dart:io';

import 'package:news_app/Widgets/news_tiles.dart';

//Hack
class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  HttpOverrides.global = MyHttpOverrides();
  // NewsServices.getNews();
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
