import 'package:flutter/material.dart';
import 'package:flutter_lessons/news_widget.dart';

import 'News.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({Key? key}) : super(key: key);

  List<News> news = [
    News(title: "Привет всем", text: "Привет привет", id: 0),
    News(title: "Статья", text: "Текст статьи", id: 1),
    News(id: 2),
  ];

  @override
  Widget build(BuildContext context) {
    const title = 'News list';
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: ListView.builder(
          itemCount: news.length,
          itemBuilder: (context, index) {
            return NewsWidget(newsModel: news[index]);
          }),
    );
  }
}
