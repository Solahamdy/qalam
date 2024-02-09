import 'package:flutter/material.dart';
import '../../../../core/size_config.dart';
import 'courses_types.dart';
class CoursesTypesListView extends StatefulWidget {
   const CoursesTypesListView ({super.key});

  @override
  State<CoursesTypesListView> createState() => _CoursesTypesListViewState();
}

class _CoursesTypesListViewState extends State<CoursesTypesListView> {
  List <String> coursesTypes = ['كل الدورات','الأعلى تقييمًا','الأكثر مشاهدة','شهادات',];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight!*0.03,
      child: ListView.separated(
        reverse: true,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (BuildContext context, int index) => SizedBox(width:SizeConfig.screenWidth!*0.02),
        itemCount:coursesTypes.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: (){
              activeIndex = index ;
              setState(() {});
            },
            child: CoursesTypes(
              text: coursesTypes[index],
              isActive: activeIndex == index ,
            ),
          );
        },
      ),
    );
  }
}
