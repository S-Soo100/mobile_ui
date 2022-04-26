import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ui/constants.dart';
import 'package:mobile_ui/page/sliver_video_list_page.dart';
import 'package:mobile_ui/widget/video_card_widget.dart';

class MainVideo extends StatefulWidget {
  const MainVideo({Key? key}) : super(key: key);

  @override
  _MainVideoState createState() => _MainVideoState();
}

class _MainVideoState extends State<MainVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MainBackgroundColor,
        toolbarHeight: 44.h,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 7.w),
          child: Icon(
            Icons.dangerous_outlined,
            size: 41.h,
          ),
        ),
        actions: [
          Container(
              height: 44.h,
              alignment: AlignmentDirectional.centerEnd,
              child: Text('Admin',
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold))),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
            height: 36.h,
            width: 36.h,
            alignment: AlignmentDirectional.center,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 255, 126, 116)),
            child: Text('A',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
      body: const SliverVideoListPage(),
      backgroundColor: MainBackgroundColor,
      // backgroundColor: const Color.fromRGBO(42, 42, 42, 1),
      bottomNavigationBar: Container(
        height: 108.h,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.h),
            topRight: Radius.circular(24.h),
          ),
        ),
        alignment: AlignmentDirectional.centerEnd,
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: 0,
            iconSize: 24.w,
            elevation: 0,
            backgroundColor: Colors.blue,
            selectedItemColor: Colors.orange.shade800,
            unselectedItemColor: Colors.white,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ''),
            ]),
      ),
    );
  }

  Widget _categoryWidget(String text) {
    return Container(
      width: 90.w,
      alignment: AlignmentDirectional.center,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 15.sp,
          color: Colors.white,
          // fontWeight: FontWeight.bold,
        ),
      ),
      height: 30.h,
      decoration: BoxDecoration(
          border: Border.all(
              width: 0.1, color: const Color.fromARGB(255, 128, 128, 128))),
    );
  }
}
