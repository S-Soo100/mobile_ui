import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ui/page/main_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final double screenWidth = 428;
  final double screenHeight = 926;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(screenWidth, screenHeight),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            useInheritedMediaQuery: true,
            title: 'Wheely-X Mobile Ui Test App',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const MainHome(),
          );
        });
  }
}
