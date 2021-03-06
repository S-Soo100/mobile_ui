import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ui/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_ui/widget/custom_button_widget.dart';

Future<void> customDialog(
    {required BuildContext context,
    required String title,
    required String content}) async {
  await showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.h),
            ),
            elevation: 0,
            insetPadding: const EdgeInsets.all(0),
            backgroundColor: NewDialogBackgroundColor,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 34.h),
              width: 400.w,
              height: 476.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 25.h),
                  SvgPicture.asset(
                    "assets/images/error.svg",
                    color: SpeedOMeterDataTitleColor,
                    width: 64.w,
                    height: 64.h,
                  ),
                  SizedBox(height: 33.h),
                  Container(
                    alignment: Alignment.center,
                    height: 47.h,
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 24.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 117.h,
                    child: Text(
                      content,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24.sp, color: Colors.white),
                    ),
                  ),
                  CustomButtonWidget(
                      buttonText: '??????',
                      buttonTextColor: Colors.white,
                      buttonColor: MainLogoColor,
                      buttonAction: (_) {
                        Navigator.of(context).pop();
                      }),
                  SizedBox(height: 13.h),
                  CustomButtonWidget(
                      buttonText: '??????',
                      buttonTextColor: Colors.white,
                      buttonColor: MainBluetoothBoxColor,
                      buttonAction: (_) {
                        Navigator.of(context).pop();
                      })
                ],
              ),
            ));
      });
}
