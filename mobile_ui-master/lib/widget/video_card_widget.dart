import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VideoCardWidget extends StatelessWidget {
  const VideoCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 16.0 / 9.0,
            child: Container(
              height: 230.h,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(10.w)),
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
                          '00:00',
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
          SizedBox(
            height: 34.h,
            child: Row(
              children: [
                Text(
                  '상큼하게 등 조지는 법',
                  style: TextStyle(
                    fontSize: 22.sp,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '베카',
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
