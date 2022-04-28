import 'package:flutter/material.dart';
import 'package:mobile_ui/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileSettingMainPage extends StatelessWidget {
  const ProfileSettingMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainBackgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _goBackButtonWidet(context),
            SizedBox(height: 24.h),
            //터지기 대책
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    userIcon(),
                    SizedBox(height: 32.h),
                    goToProfileChangePage(),
                    SizedBox(height: 14.h),
                    goToSettingPage(),
                    SizedBox(height: 14.h),
                    goToSensorSettingPage(),
                    SizedBox(height: 28.h),
                    sensorStatusWidget(),
                    lateVersionIndicatorWidget(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  userIcon() {
    return Container(
      alignment: Alignment.center,
      width: 144.w,
      height: 197.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            width: 144.w,
            height: 144.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blueAccent,
            ),
            child: Text('A',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 108.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
          ),
          Text('Admin',
              style: TextStyle(
                fontSize: 36.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
        ],
      ),
    );
  }

  goToProfileChangePage() {
    return Container(
      alignment: AlignmentDirectional.center,
      width: 300.w,
      height: 54.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        color: NewButtonColor,
      ),
      child: Text('사용자 변경',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 22.sp,
            color: Colors.white,
          )),
    );
  }

  goToSettingPage() {
    return Container(
      alignment: AlignmentDirectional.center,
      width: 300.w,
      height: 54.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        color: NewButtonColor,
      ),
      child: Text('설정',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 22.sp,
            color: Colors.white,
          )),
    );
  }

  goToSensorSettingPage() {
    return Container(
      alignment: AlignmentDirectional.center,
      width: 300.w,
      height: 54.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        color: NewButtonColor,
      ),
      child: Text('센서 설정',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 22.sp,
            color: Colors.white,
          )),
    );
  }

  sensorStatusWidget() {
    return Container(
      width: 300.w,
      height: 275.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          SensorStatusIndicatorWidget(
            name: 'B4123',
            battery: 100,
            directrion: 'Left Sensor',
          ),
          SensorStatusIndicatorWidget(
            name: 'B4322',
            battery: 100,
            directrion: 'Right Sensor',
          ),
        ],
      ),
    );
  }

  lateVersionIndicatorWidget() {
    return Text('Version 0.0.1',
        style: TextStyle(
          fontSize: 14.sp,
          color: Colors.white,
        ));
  }

  Widget _goBackButtonWidet(BuildContext context) {
    return Container(
      height: 50.h,
      child: Align(
        alignment: Alignment.topLeft,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 11.h, horizontal: 15.w),
                width: 25.h,
                height: 25.h,
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: BackWardButtonColor,
                ),
              ),
            ),
            Text('뒤로가기',
                style: TextStyle(
                  fontSize: 19.sp,
                  color: BackWardButtonColor,
                )),
          ],
        ),
      ),
    );
  }
}

class SensorStatusIndicatorWidget extends StatelessWidget {
  const SensorStatusIndicatorWidget(
      {Key? key,
      required this.name,
      required this.battery,
      required this.directrion})
      : super(key: key);
  final String name;
  final int battery;
  final String directrion;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.w,
      child: Column(
        children: [
          Text(name, style: TextStyle(fontSize: 16.sp, color: Colors.white)),
          SizedBox(
            height: 17.h,
          ),
          Image(
            image: const AssetImage('assets/images/bshark.png'),
            width: 72.w,
            height: 109.h,
          ),
          SizedBox(
            height: 12.h,
          ),
          Image(
            image: AssetImage('assets/images/battery_${battery}_Green.png'),
            width: 33.w,
            height: 18.h,
          ),
          SizedBox(
            height: 3.h,
          ),
          Text('${battery}%',
              style: TextStyle(fontSize: 16.sp, color: Colors.white)),
          SizedBox(
            height: 6.h,
          ),
          Text('$directrion',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.sp, color: Colors.white)),
        ],
      ),
    );
  }
}
