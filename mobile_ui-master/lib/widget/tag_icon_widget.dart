import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TagIconWidget extends StatelessWidget {
  const TagIconWidget({Key? key, required this.tagName, required this.image})
      : super(key: key);
  final String tagName;
  final String image;
  @override
  Widget build(BuildContext context) {
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
