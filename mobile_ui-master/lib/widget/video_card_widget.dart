import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ui/page/video_detail_popup.dart';

class VideoCardWidget extends StatelessWidget {
  const VideoCardWidget(
      {Key? key,
      required this.thumbnail,
      required this.title,
      required this.coach,
      required this.difficulty,
      required this.category,
      required this.time})
      : super(key: key);

  final String thumbnail;
  final String title;
  final String coach;
  final int difficulty;
  final int category;
  final String time;

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
                            thumbnail: thumbnail,
                          )),
                );
              },
              child: Container(
                height: 230.h,
                decoration: BoxDecoration(
                    // color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(10.w),
                    image: DecorationImage(image: AssetImage(thumbnail))),
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
                            '$time',
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
                  title,
                  style: TextStyle(
                    fontSize: 22.sp,
                    color: Colors.white,
                  ),
                ),
                Text(
                  coach,
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
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.orangeAccent,
                      size: 18.w,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.orangeAccent,
                      size: 18.w,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.orangeAccent,
                      size: 18.w,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.orangeAccent,
                      size: 18.w,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.orangeAccent,
                      size: 18.w,
                    )
                  ],
                ),
                Text(
                  '휠라테스',
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
}
