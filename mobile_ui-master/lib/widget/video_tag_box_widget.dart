import 'package:flutter/material.dart';
import 'package:mobile_ui/model/video_model.dart';
import 'package:mobile_ui/widget/tag_icon_widget.dart';

class VideoTagBoxWidget extends StatelessWidget {
  const VideoTagBoxWidget({Key? key, required this.videoModel})
      : super(key: key);

  final VideoModel videoModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(videoModel.tags.length, (int index) {
        return TagIconWidget(
            tagName: videoModel.tags[index]['tagName'],
            image: videoModel.tags[index]['image']);
      }),
    );
  }
}
