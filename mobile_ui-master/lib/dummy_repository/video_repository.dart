import 'package:flutter/material.dart';
import 'package:mobile_ui/model/category_model.dart';
import 'package:mobile_ui/model/video_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ui/widget/tag_icon_widget.dart';

List<int> idList = List<int>.generate(10, (int index) => index);

List<String> videoNameList =
    List<String>.generate(10, (index) => 'Fitness Video Title #$index');

List<String> thumbnailList =
    List<String>.generate(10, (index) => 'assets/00200${index + 1}.png');

List<int> dummydifficultyList = [1, 3, 5, 2, 1, 3, 4, 4, 2, 1];

List<Map<String, String>> dummyTagIconList = [
  {'tagName': '전력질주', 'image': 'assets/icon_1.svg'},
  {'tagName': '경수추천', 'image': 'assets/icon_2.svg'},
  {'tagName': '근육이완', 'image': 'assets/icon_3.svg'},
  {'tagName': '태그이름', 'image': 'assets/icon_1.svg'},
  {'tagName': '태그이름', 'image': 'assets/icon_5.svg'},
  {'tagName': '태그이름', 'image': 'assets/icon_6.svg'},
  {'tagName': '양팔들기', 'image': 'assets/icon_7.svg'},
];

List<VideoModel> videorepository = List<VideoModel>.generate(
  10,
  (index) => VideoModel(
    id: idList[index],
    createdAt: idList[index].toString(),
    updatedAt: 'update date',
    publishedAt: 'published date',
    name: videoNameList[index],
    thumnailUrl: thumbnailList[index],
    videoUrl: 'videoUrl',
    met: 30,
    time: 30,
    calorie: 150,
    difficulty: dummydifficultyList[index],
    description: 'description',
    status: 0,
    instructor: 'instructor',
    tags: dummyTagIconList,
    fitnessParts: ['fitnessParts'],
    category: CategoryModel(
      id: 1,
      name: 'something',
      description: 'something',
      status: 0,
    ),
  ),
);
