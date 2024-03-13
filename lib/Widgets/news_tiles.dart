import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/Models/news_article_model.dart';

class NewsTile extends StatelessWidget {
  final NewsArticleModel articleModel;
  const NewsTile({super.key, required this.articleModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Image.asset('assets/OIP.jpg'),
        // ClipRRect(
        //   borderRadius: BorderRadius.circular(6),
        //   child:
        // Image.network(
        //     articleModel.image ??
        //         'https://static.vecteezy.com/system/resources/previews/000/228/739/original/news-report-concept-background-design-vector.jpg',
        //     width: double.infinity,
        //     fit: BoxFit.cover,
        //     height: 200,
        //     loadingBuilder: (context, child, loadingProgress) {
        //       if (loadingProgress == null) return child;
        //       return Center(
        //         child: CircularProgressIndicator(
        //           value: loadingProgress.expectedTotalBytes != null
        //               ? loadingProgress.cumulativeBytesLoaded /
        //                   loadingProgress.expectedTotalBytes!
        //               : null,
        //         ),
        //       );
        //     },
        //   ),
        // ),

        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: CachedNetworkImage(
            imageUrl: articleModel.image ??
                'https://static.vecteezy.com/system/resources/previews/000/228/739/original/news-report-concept-background-design-vector.jpg',
            placeholder: (context, url) => Container(
              height: 200,
              width: 200,
              child: CircularProgressIndicator(),
            ),
            errorWidget: (context, url, error) => Icon(Icons.error),
            width: double.infinity,
            fit: BoxFit.fill,
            height: 200,
          ),
        ),

        Text(
          articleModel.title ?? '',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          articleModel.subtitle ?? '',
          style: TextStyle(
            fontSize: 17,
            color: Colors.grey,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
