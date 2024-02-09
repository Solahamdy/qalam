
import 'package:flutter/material.dart';
import 'package:qalam/components/custom_button.dart';
import 'package:qalam/components/rating.dart';
import 'package:qalam/core/size_config.dart';
import 'package:qalam/screens/courses/courseScreen/components/about_course_tab.dart';
import 'package:qalam/screens/courses/courseScreen/components/course_content_listview.dart';
import 'package:qalam/utils/styles.dart';


class SelectedCourseScreen extends StatelessWidget {
  SelectedCourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: SizeConfig.screenHeight! * 0.3,
                  width: SizeConfig.screenWidth,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/book.png'),
                          fit: BoxFit.fill)),
                ),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  height: SizeConfig.screenHeight! * 0.04,
                  width: SizeConfig.screenWidth,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.bookmark_outline,
                            size: 25,
                            color: Color(0xff777777),
                          )),
                      const Spacer(),
                      const Text(
                        'تعلم الكتابة التقنية',
                        style: Styles.style20,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Rating(),
                ),
                const SizedBox(height: 10,),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'متوسط',
                            style: Styles.style8,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.bar_chart_outlined,
                              color: Color(0xff028174), size: 15),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '12 ساعة',
                            style: Styles.style8,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.access_time_outlined,
                              color: Color(0xff028174), size: 15),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '2,256 طالب مشترك',
                            style: Styles.style8,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.school_outlined,
                              color: Color(0xff028174), size: 15),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
           Expanded(
            child: DefaultTabController(
              length: 2, // number of tabs
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    const TabBar(
                      overlayColor: MaterialStatePropertyAll(Colors.white),
                             indicatorColor: Color(0xff028174),
                             labelColor: Color(0xff028174),
                             labelStyle: TextStyle(
                               fontSize: 11,
                               fontFamily: 'Almarai',
                               fontWeight: FontWeight.w400,
                             ),
                        tabs: [
                               Tab(
                                 text: 'محتوى الدورة',
                               ),
                               Tab(
                                 text: 'عن الدورة',
                               ),
                             ]
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          CourseContentList(),
                          const AboutCourseTab(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomButton(text: 'ألتحق بالدورة',),
          )
        ],
      ),
    );
  }
}
