import 'package:flutter/material.dart';
import 'package:mobile_ui/model/video_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VideoTagBoxWidget extends StatelessWidget {
  const VideoTagBoxWidget({Key? key, required this.videoModel})
      : super(key: key);

  final VideoModel videoModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(videoModel.tags.length, (int index) {
        return tagIconWidget(
            tagName: videoModel.tags[index]['tagName'],
            image: videoModel.tags[index]['image']);
      }),
    );
  }

  Container tagIconWidget({required String tagName, required String image}) {
    return Container(
      alignment: AlignmentDirectional.center,
      height: 69.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            image,
            width: 28.w,
            height: 28.w,
          ),
          SizedBox(height: 6.h),
          Text(
            "#$tagName",
            style: TextStyle(fontSize: 12.sp, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
