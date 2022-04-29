import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ui/page/profile_setting_main.dart';

class GoToProfileSettingWidget extends StatelessWidget {
  const GoToProfileSettingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfileSettingMainPage()),
        );
      },
      child: Container(
        alignment: Alignment.centerRight,
        // width: 103.w,
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Container(
              height: 44.h,
              alignment: AlignmentDirectional.centerEnd,
              child: Text('Admin',
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white))),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w),
            height: 36.h,
            width: 36.h,
            alignment: AlignmentDirectional.center,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 255, 126, 116)),
            child: Text('A',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold)),
          ),
        ]),
      ),
    );
  }
}
