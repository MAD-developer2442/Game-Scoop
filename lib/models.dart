import 'package:flutter/material.dart';

class News {
  String name;
  String title;
  String url;
  String urlToImage;
  String content;

  News(this.name, this.title, this.url, this.urlToImage, this.content);

  factory News.fromJson(dynamic json) {
    return News(
      json['source']['name'] as String,
      json['title'] as String,
      json['url'] as String,
      json['urlToImage'] as String,
      json['content'] as String,
    );
  }

  @override
  String toString() {
    return '{ $name, $title, $url, $urlToImage, $content }';
  }
}

class DetailsAgentsModel {
  final String agentName;
  final String images;
  final String agentDetails;
  final Color color;

  DetailsAgentsModel(this.agentName, this.images, this.agentDetails,this.color);
}
