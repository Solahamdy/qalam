import 'package:flutter/material.dart';
import '../../../../core/size_config.dart';
import '../../../../models/courses_details_model.dart';
import 'courses_details.dart';
class CoursesDetailsListView extends StatelessWidget {
  List<CoursesDetailsModel> coursesDetails =[
    CoursesDetailsModel('تعلم الكتابة التقنية', 'assets/images/book1.png', ' 16 درس'),
    CoursesDetailsModel('كتابة القصة القصيرة', 'assets/images/book2.png', ' 10 دروس'),
    CoursesDetailsModel('كتابة الرواية', 'assets/images/book3.png', ' 20 درس'),
    CoursesDetailsModel('كتابة السيناريو', 'assets/images/book4.png', ' 35 درس'),
    CoursesDetailsModel('دورة الكتابة المسرحية', 'assets/images/book5.png', ' 12 درس'),
  ];
  CoursesDetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight!*0.29,
      child: Padding(
        padding: const EdgeInsets.only( right: 20),
        child: ListView.builder(
          reverse: true,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount:coursesDetails.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: (){
              },
              child: Center(
                child: CoursesDetails(
                  courseName: coursesDetails[index].courseName ,
                  image: coursesDetails[index].image,
                  lessons: coursesDetails[index].lessons,
                ),
              ),
            );
          },
        ),
      ),

    );
  }
}
