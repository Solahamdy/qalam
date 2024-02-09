import 'package:flutter/material.dart';
import 'package:qalam/core/size_config.dart';
import 'package:qalam/screens/courses/courseScreen/components/course_content_tab.dart';
class CourseContentList extends StatelessWidget {
  List<String> titles =['ما هي الكتابة الإبداعية؟','العناصر الأساسية للكتابة الإبداعية',
    'ما هي الحبكة؟','كيفية بناء حبكة مثيرة للاهتمام'];
  List <int> ranking =[1,2,3,4];
   CourseContentList({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: SizeConfig.screenWidth,
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 5),
        itemCount:titles.length,
        itemBuilder: (BuildContext context, int index) {
          return CourseContentTab(
            title: titles[index],
            rank: ranking[index],
          )  ;
        },
      ),
    );
  }
}
