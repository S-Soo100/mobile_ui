import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ui/constants.dart';
import 'package:mobile_ui/page/sliver_video_list_page.dart';
import 'package:mobile_ui/widget/custom_button_widget.dart';
import 'package:mobile_ui/widget/custom_dialog_widget.dart';
import 'package:mobile_ui/widget/go_to_profile_setting_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: MainBackgroundColor,
          toolbarHeight: 44.h,
          leading: GestureDetector(
            onTap: () => customDialog(
                context: context, content: 'Contents.', title: 'Title'),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.w),
              child: SizedBox(
                  child: Image.asset(
                'assets/images/symbol_orange.png',
                width: 40.w,
              )),
            ),
          ),
          actions: const [GoToProfileSettingWidget()]),
      body: SliverVideoListPage(),
      backgroundColor: MainBackgroundColor,
      // backgroundColor: const Color.fromRGBO(42, 42, 42, 1),
      bottomNavigationBar: Container(
        height: 88.h,
        decoration: BoxDecoration(
          color: MainBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.h),
            topRight: Radius.circular(24.h),
          ),
          boxShadow: const [
            BoxShadow(blurRadius: 3),
          ],
        ),
        alignment: AlignmentDirectional.bottomCenter,
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: 0,
            iconSize: 30.w,
            elevation: 0,
            backgroundColor: MainBackgroundColor.withOpacity(0),
            selectedItemColor: Colors.orange.shade800,
            unselectedItemColor: Colors.white,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.graphic_eq), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month_outlined), label: ''),
            ]),
      ),
    );
  }
}
