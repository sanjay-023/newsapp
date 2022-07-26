import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:newsapp/app/data/controller/api_service.dart';
import 'package:newsapp/app/data/model/article_model.dart';
import 'package:newsapp/app/modules/home/views/widget/news_tile.dart';

import '../controllers/home_controller.dart';

// ignore: must_be_immutable
class HomeView extends GetView<HomeController> {
  ApiService apiService = ApiService();
  @override
  Widget build(BuildContext context) {
    apiService.getArticle();
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'News App',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 255, 253, 253),
        ),
        body: FutureBuilder(
            future: apiService.getArticle(),
            builder: (context, AsyncSnapshot<List<Article>> snapshot) {
              if (snapshot.hasData) {
                List<Article>? articles = snapshot.data;
                return ListView.builder(
                  itemBuilder: (context, index) {
                    return CustomNewsTile(articles![index]);
                  },
                  itemCount: articles!.length,
                );
              }

              return Center(
                child: CircularProgressIndicator(),
              );
            }));
  }
}
