import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ui/constants.dart';
import 'package:mobile_ui/model/category_model.dart';
import 'package:mobile_ui/model/video_model.dart';
import 'package:mobile_ui/widget/video_info_box_widget.dart';
import 'package:mobile_ui/widget/video_tag_box_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VideoDetailPopup extends StatelessWidget {
  const VideoDetailPopup({Key? key, required this.videoModel})
      : super(key: key);

  final VideoModel videoModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainBackgroundColor,
      body: Container(
        height: 1.sh,
        width: 1.sw,
        child: Stack(alignment: Alignment.bottomLeft,
            // fit: StackFit.loose,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 0.5.sh,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(videoModel.thumnailUrl),
                          fit: BoxFit.fitHeight)),
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
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(_showCategory(videoModel.category),
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: Color.fromRGBO(180, 180, 180, 1),
                              fontWeight: FontWeight.w500)),
                    ),
                    SizedBox(height: 14.h),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        videoModel.name,
                        style: TextStyle(
                            fontSize: 28.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(height: 10.h),
                            _videoDetailInfos(),
                            _videoTags(),
                            _instructorAndDescription(),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              _goBackButtonWidet(context),
            ]),
      ),
      bottomNavigationBar: _startVideoButtonWidget(),
    );
  }

  Container _instructorAndDescription() {
    return Container(
      padding: EdgeInsets.only(left: 14.w, top: 14.h, right: 14.w),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 14.w),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                width: 40.w,
                height: 40.h,
              ),
              Text(
                videoModel.instructor,
                style: TextStyle(fontSize: 18.sp, color: Colors.white),
              )
            ],
          ),
          SizedBox(
            height: 14.h,
          ),
          Text(
            videoModel.description,
            style: TextStyle(fontSize: 18.sp, color: Colors.white),
          )
        ],
      ),
    );
  }

  Align _goBackButtonWidet(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 76.h, horizontal: 14.w),
          width: 32.h,
          height: 32.h,
          decoration:
              BoxDecoration(color: MainBackgroundColor, shape: BoxShape.circle),
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Container _startVideoButtonWidget() {
    return Container(
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
        onTap: () => print('play video'),
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
    );
  }

  Widget _videoDetailInfos() {
    return Container(
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
      child: VideoInfoBoxWidget(
        videoModel: videoModel,
      ),
    );
  }

  Widget _videoTags() {
    return Container(
        margin: EdgeInsets.only(bottom: 20.h),
        padding: EdgeInsets.symmetric(horizontal: 14.w),
        width: 400.w,
        height: 69.h,
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
        child: VideoTagBoxWidget(videoModel: videoModel));
  }

  String _showCategory(CategoryModel category) {
    if (category.id == 1) {
      return '휠체어 스피닝';
    }
    return '카테고리';
  }
}
