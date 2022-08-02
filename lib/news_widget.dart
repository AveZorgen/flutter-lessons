import 'package:flutter/material.dart';

import 'News.dart';

class NewsWidget extends StatelessWidget {
  final News newsModel;

  const NewsWidget({Key? key, required this.newsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
      width: width*0.5,
      height: 320,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(width: 1.2),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(newsModel.title),
        Expanded(child: Card(child: Image.network(newsModel.photoURL),)),
        Expanded(child: SingleChildScrollView(child: Text(newsModel.text),))
      ],),
    );
  }
}
