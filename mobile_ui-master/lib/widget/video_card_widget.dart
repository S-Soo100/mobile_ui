import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ui/constants.dart';
import 'package:mobile_ui/model/category_model.dart';
import 'package:mobile_ui/model/video_model.dart';
import 'package:mobile_ui/page/video_detail_popup.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VideoCardWidget extends StatelessWidget {
  const VideoCardWidget({
    Key? key,
    required this.videoModel,
  }) : super(key: key);

  final VideoModel videoModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.h),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 16.0 / 9.0,
            child: GestureDetector(
              onDoubleTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => VideoDetailPopup(
                            videoModel: videoModel,
                          )),
                );
              },
              child: Container(
                height: 230.h,
                decoration: BoxDecoration(
                    // color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(10.w),
                    // image: DecorationImage(image: AssetImage(thumbnail))),
                    image: DecorationImage(
                        image: AssetImage(videoModel.thumnailUrl))),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 12.h, right: 12.w),
                      child: Opacity(
                        opacity: 0.5,
                        child: Container(
                          alignment: AlignmentDirectional.center,
                          width: 80.w,
                          height: 24.h,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.h))),
                          child: Text(
                            '${videoModel.time}',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.sp),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 34.h,
            child: Row(
              children: [
                Text(
                  videoModel.name,
                  style: TextStyle(
                    fontSize: 22.sp,
                    color: Colors.white,
                  ),
                ),
                Text(
                  videoModel.instructor,
                  style: TextStyle(
                    fontSize: 22.sp,
                    color: Colors.white,
                  ),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          SizedBox(
            height: 35.h,
            child: Row(
              children: [
                _getDifficulty(videoModel.difficulty),
                Text(
                  showCategory(videoModel.category),
                  style: TextStyle(
                    fontSize: 22.sp,
                    color: Colors.white,
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          )
        ],
      ),
    );
  }

  String showCategory(CategoryModel category) {
    if (category.id == 1) {
      return '휠체어 스피닝';
    }
    return '휠라테스';
  }

  Widget _getDifficulty(int difficulty) {
    List<Widget> starList = [];
    int num = 5 - difficulty;
    for (var i = 0; i < difficulty; i++) {
      starList.add(_returnDifficulty(true));
    }
    for (var i = 0; i < num; i++) {
      starList.add(_returnDifficulty(false));
    }

    return Row(
      children: starList,
    );
  }

  Widget _returnDifficulty(bool check) {
    if (check == true) {
      return SvgPicture.asset(
        'assets/difficulty_large_selected.svg',
        color: MainBluetoothSettingTextColor,
        width: 18.w,
        height: 18.w,
      );
    } else {
      return SvgPicture.asset(
        'assets/difficulty_large.svg',
        color: MainBluetoothBoxBorderColor,
        width: 18.w,
        height: 18.w,
      );
    }
  }
}
