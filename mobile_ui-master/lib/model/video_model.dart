import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:mobile_ui/model/category_model.dart';

class VideoModel {
  final int id;
  final String createdAt;
  final String updatedAt;
  final String? publishedAt;
  final String name;
  final String thumnailUrl;
  final String videoUrl;
  final int met;
  final int time;
  final int calorie;
  final int difficulty;
  final String description;
  final int status;
  final String instructor;
  final List<dynamic> tags;
  final List<dynamic> fitnessParts;
  final CategoryModel category;
  VideoModel({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
    required this.name,
    required this.thumnailUrl,
    required this.videoUrl,
    required this.met,
    required this.time,
    required this.calorie,
    required this.difficulty,
    required this.description,
    required this.status,
    required this.instructor,
    required this.tags,
    required this.fitnessParts,
    required this.category,
  });

  VideoModel copyWith({
    int? id,
    String? createdAt,
    String? updatedAt,
    String? publishedAt,
    String? name,
    String? thumnailUrl,
    String? videoUrl,
    int? met,
    int? time,
    int? calorie,
    int? difficulty,
    String? description,
    int? status,
    String? instructor,
    List<dynamic>? tags,
    List<dynamic>? fitnessParts,
    CategoryModel? category,
  }) {
    return VideoModel(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      publishedAt: publishedAt ?? this.publishedAt,
      name: name ?? this.name,
      thumnailUrl: thumnailUrl ?? this.thumnailUrl,
      videoUrl: videoUrl ?? this.videoUrl,
      met: met ?? this.met,
      time: time ?? this.time,
      calorie: calorie ?? this.calorie,
      difficulty: difficulty ?? this.difficulty,
      description: description ?? this.description,
      status: status ?? this.status,
      instructor: instructor ?? this.instructor,
      tags: tags ?? this.tags,
      fitnessParts: fitnessParts ?? this.fitnessParts,
      category: category ?? this.category,
    );
  }

  bool isNewVideo() {
    DateTime publishedDate =
        DateTime.parse(publishedAt ?? "2022-01-01T13:08:48.996Z");
    DateTime now = DateTime.now();

    if (now.difference(publishedDate).inDays < 7) {
      return true;
    }
    return false;
  }
}
