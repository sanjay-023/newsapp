import 'package:newsapp/app/data/model/source_model.dart';

class Article {
  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urltoImage;
  String? publishedDate;
  String? content;

  Article(
      {this.source,
      this.author,
      this.title,
      this.description,
      this.url,
      this.urltoImage,
      this.publishedDate,
      this.content});

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
        source: Source.fromJson(json['source']),
        author: json['author'],
        title: json['title'],
        description: json['description'],
        url: json['url'],
        urltoImage: json['urlToImage'],
        publishedDate: json['publishedAt'],
        content: json['content']);
  }
}
