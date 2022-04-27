import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_ui/constants.dart';
import 'package:mobile_ui/widget/video_card_widget.dart';

class SliverVideoListPage extends StatelessWidget {
  const SliverVideoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 4,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                    elevation: 0,
                    pinned: false,
                    floating: true,
                    // snap: true,
                    toolbarHeight: 104.h,
                    backgroundColor: MainBackgroundColor,
                    title: Container(
                      alignment: AlignmentDirectional.topStart,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('피트니스 콘텐츠 선택',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 36.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 13.h,
                          ),
                          Text(
                            '취향에 맞는 콘텐츠를 골라보세요!',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    )),

                const SliverAppBar(
                  elevation: 0,
                  pinned: true,
                  backgroundColor: MainBackgroundColor,
                  title: TabBar(indicatorColor: MainLogoColor, tabs: [
                    Text(
                      '전체',
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      '휠체어 스피닝',
                      style: TextStyle(fontSize: 15),
                    ),
                    InkWell(
                      child: Text(
                        '휠라로빅',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    InkWell(
                      child: Text(
                        '휠라테스&요가',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ]),
                ),
                // const SliverPersistentHeader(
                //     pinned: true, delegate: TabBarDelegate()),
              ];
            },
            body: TabBarView(
              children: [
                Container(
                  color: MainBackgroundColor,
                  child: ListView.builder(
                      padding:
                          EdgeInsets.symmetric(horizontal: 14.w, vertical: 0.h),
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return VideoCardWidget(
                          thumbnail: 'assets/00200${index + 1}.png',
                          title: '동영상 타이틀을 입력하세요',
                          coach: '강사 이름',
                          difficulty: 1,
                          time: '50:00',
                          category: 0,
                        );
                      }),
                ),
                Container(
                  color: MainBackgroundColor,
                  child: ListView.builder(
                      padding: const EdgeInsets.all(14),
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return const VideoCardWidget(
                          thumbnail: 'assets/002001.png',
                          title: '동영상 타이틀을 입력하세요',
                          coach: '강사 이름',
                          difficulty: 1,
                          time: '50:00',
                          category: 0,
                        );
                      }),
                ),
                Container(
                  color: MainBackgroundColor,
                  child: ListView.builder(
                      padding: const EdgeInsets.all(14),
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return VideoCardWidget(
                          thumbnail: 'assets/002001.png',
                          title: '동영상 타이틀을 입력하세요',
                          coach: '강사 이름',
                          difficulty: 1,
                          time: '50:00',
                          category: 0,
                        );
                      }),
                ),
                Container(
                  color: MainBackgroundColor,
                  child: ListView.builder(
                      padding: const EdgeInsets.all(14),
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return VideoCardWidget(
                          thumbnail: 'assets/002001.png',
                          title: '동영상 타이틀을 입력하세요',
                          coach: '강사 이름',
                          difficulty: 1,
                          time: '50:00',
                          category: 0,
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
