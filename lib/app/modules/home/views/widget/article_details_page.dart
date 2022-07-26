import 'package:flutter/material.dart';
import 'package:newsapp/app/data/model/article_model.dart';

class ArticlePage extends StatelessWidget {
  final Article article;
  ArticlePage({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(article.title!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
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
            Row(
              children: [
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
                  width: 150,
                ),
                Text(article.publishedDate!)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              article.title!,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              article.description!,
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
