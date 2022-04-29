import 'package:flutter/material.dart';
import 'package:mobile_ui/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    Key? key,
    required this.buttonText,
    required this.buttonTextColor,
    this.buttonColor,
    this.additionalHeight = false,
    this.isLeft,
    this.isRight,
    this.buttonSize,
    required this.buttonAction,
    this.buttonBorderColor,
  }) : super(key: key);

  final String buttonText;
  final Color buttonTextColor;
  final Color? buttonColor;
  final bool? isLeft;
  final bool? isRight;
  final double? buttonSize;
  final bool additionalHeight;
  final Function buttonAction;
  final Color? buttonBorderColor;

  Alignment getTextAlignment() {
    if (isLeft == true) {
      return Alignment.centerLeft;
    } else if (isRight == true) {
      return Alignment.centerRight;
    }
    return Alignment.center;
  }

  @override
  Widget build(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);

    return InkWell(
      onTap: () => buttonAction(currentFocus),
      child: Container(
        alignment: AlignmentDirectional.center,
        width: 300.w,
        height: 54.h,
        // margin: EdgeInsets.all(DefaultMargin),
        decoration: BoxDecoration(
            color: buttonColor == null
                ? Theme.of(context).primaryColor
                : buttonColor,
            border: buttonBorderColor == null
                ? Border.all(color: MainBackgroundColor.withOpacity(0))
                : Border.all(
                    color: buttonBorderColor!,
                  ),
            borderRadius: BorderRadius.all(
              Radius.circular(8.h),
            )),
        child: Text(
          buttonText,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 22.sp,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
