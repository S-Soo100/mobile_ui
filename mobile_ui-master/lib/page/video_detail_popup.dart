import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ui/constants.dart';

class VideoDetailPopup extends StatelessWidget {
  const VideoDetailPopup({Key? key, required this.thumbnail}) : super(key: key);

  final String thumbnail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: 1.sh,
        width: 1.sw,
        child: Stack(alignment: Alignment.bottomLeft,
            // fit: StackFit.loose,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 424.h,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(thumbnail), fit: BoxFit.fitHeight)),
                ),
              ),
              Container(
                height: 398.h,
                width: 1.sw,
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                decoration: BoxDecoration(
                  color: MainBackgroundColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade900,
                      blurRadius: 5.0,
                      spreadRadius: 3.0,
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24.h),
                    topRight: Radius.circular(24.h),
                  ),
                ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 23.h),
                      child: Container(
                        width: 85.6.w,
                        height: 8.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.h),
                          color: Color.fromARGB(255, 146, 146, 146),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('휠라로빅',
                            style: TextStyle(
                                fontSize: 18.sp,
                                color: Color.fromRGBO(180, 180, 180, 1),
                                fontWeight: FontWeight.w500)),
                        Text('50:00',
                            style: TextStyle(
                                fontSize: 18.sp,
                                color: Color.fromRGBO(180, 180, 180, 1),
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '타이틀을 입력하여 주세요',
                        style: TextStyle(
                            fontSize: 28.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 22.h,
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 20.h),
                              width: 400.w,
                              height: 55.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.h),
                                color: MainInfoBoxColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 5.0,
                                    spreadRadius: 1.0,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 20.h),
                              width: 400.w,
                              height: 55.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.h),
                                color: MainInfoBoxColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 5.0,
                                    spreadRadius: 1.0,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 400.w,
                              height: 200.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.h),
                                color: MainInfoBoxColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 5.0,
                                    spreadRadius: 1.0,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 38.h, horizontal: 14.w),
                    width: 32.h,
                    height: 32.h,
                    decoration: BoxDecoration(
                        color: MainBackgroundColor, shape: BoxShape.circle),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ]),
      )),
      bottomNavigationBar: Container(
        padding: EdgeInsets.fromLTRB(20.w, 24.h, 20.w, 8.h),
        // height: 127.h,
        decoration: BoxDecoration(
          color: MainBackgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 5.0,
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: GestureDetector(
          onDoubleTap: () {
            print('play');
          },
          child: Container(
            width: 380.w,
            height: 55.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(55.h),
              color: MainLogoColor,
            ),
            alignment: AlignmentDirectional.center,
            child: Text(
              '운동 시작',
              style: TextStyle(
                  fontSize: 18.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
