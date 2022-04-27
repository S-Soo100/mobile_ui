import 'package:flutter/material.dart';
import 'package:mobile_ui/model/video_model.dart';
import 'package:mobile_ui/widget/tag_icon_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VideoInfoBoxWidget extends StatelessWidget {
  const VideoInfoBoxWidget({Key? key, required this.videoModel})
      : super(key: key);

  final VideoModel videoModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.only(left: 14),
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/calories.svg',
                color: Colors.white,
                width: 20.w,
                height: 20.w,
              ),
              SizedBox(
                width: 7.w,
              ),
              Text(
                'X ${videoModel.difficulty.toInt()}',
                style: infoBoxTextStyle(),
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/part.svg',
                color: Colors.white,
                width: 20.w,
                height: 20.w,
              ),
              SizedBox(
                width: 7.w,
              ),
              Text(
                '복근운동',
                style: infoBoxTextStyle(),
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/scale_big_round.svg',
                color: Colors.white,
                width: 20.w,
                height: 20.w,
              ),
              SizedBox(
                width: 7.w,
              ),
              Text(
                '${videoModel.calorie} kcal',
                style: infoBoxTextStyle(),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 14),
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/time.svg',
                color: Colors.white,
                width: 20.w,
                height: 20.w,
              ),
              SizedBox(
                width: 7.w,
              ),
              Text(
                '${videoModel.time}',
                style: infoBoxTextStyle(),
              ),
            ],
          ),
        ),
      ],
    );
  }

  TextStyle infoBoxTextStyle() => TextStyle(
        fontSize: 16.sp,
        color: Colors.white,
      );
}
