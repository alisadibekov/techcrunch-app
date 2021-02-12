// My libraries
import 'package:techcrunch_app/models/article_model.dart';

// Dart libraries
import 'dart:convert';

// Pub libraries
import 'package:http/http.dart';

class News {
  List<ArticleModel> news = [];

  Future<void> getNews() async {
    try {
      Response response = await get(
          'http://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=9f2f6f3ab80c4931b52c25ee81682090');
      Map jsonData = jsonDecode(response.body);

      jsonData['articles'].forEach((element) {
        ArticleModel articleModel = ArticleModel(
          title: element['title'],
          author: element['author'],
          description: element['description'],
          url: element['url'],
          urlToImage: element['urlToImage'],
          publishedAt: element['publishedAt'],
          content: element['content'],
        );
        news.add(articleModel);
      });
    } catch (e) {
      print("caught error: $e");
    }
  }
}
