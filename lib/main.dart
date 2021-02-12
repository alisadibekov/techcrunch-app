import 'package:flutter/material.dart';

import 'package:techcrunch_app/pages/home.dart';
import 'package:techcrunch_app/pages/category_news.dart';
import 'package:techcrunch_app/pages/article_view.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/category_news': (context) => CategoryNews(),
        '/article_view': (context) => ArticleView(),
      },
    ));
