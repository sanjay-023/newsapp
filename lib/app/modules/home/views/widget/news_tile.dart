import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:newsapp/app/data/model/article_model.dart';
import 'package:newsapp/app/modules/home/views/widget/article_details_page.dart';

Widget CustomNewsTile(Article article) {
  return InkWell(
    onTap: () {
      Get.to(ArticlePage(
        article: article,
      ));
    },
    child: Container(
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(18)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(article.urltoImage!))),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 248, 23, 7),
                borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                article.source!.name!,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            article.title!,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          )
        ],
      ),
    ),
  );
}
