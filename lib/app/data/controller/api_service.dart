import 'dart:convert';

import 'package:http/http.dart';
import 'package:newsapp/app/data/model/article_model.dart';

class ApiService {
  final apiUrl =
      'https://newsapi.org/v2/everything?q=apple&from=2022-07-20&to=2022-07-20&sortBy=popularity&apiKey=6f9b287b42444ca7b8afc123871ba0e5&pageSize=50';

  Future<List<Article>> getArticle() async {
    Response res = await get(Uri.parse(apiUrl));

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);
      List<dynamic> body = json['articles'];
      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();
      print(articles);
      return articles;
    } else {
      throw ("cant get data");
    }
  }
}
