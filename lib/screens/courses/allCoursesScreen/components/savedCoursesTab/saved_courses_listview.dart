import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qalam/blocs/qalamCubit/qalam_cubit.dart';
import 'package:qalam/enums/courses_enum.dart';
import '../../../../../core/size_config.dart';
import '../allCoursesTab/all_courses_container.dart';

class SavedCoursesListView extends StatelessWidget {
  List<String> images = [
    'assets/images/book3.png',

  ];
  List<String> lessons = [
    ' 20 درس',

  ];
  List<String> courseName = [
    'تعلم الكتابة التقنية',

  ];
  List<bool> case1 = [true,];
  List<bool> case2 = [true,];
  SavedCoursesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QalamCubit, QalamState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = QalamCubit.get(context);
        cubit.courseType = CoursesEnum.saved;
        cubit.defineCourseType();
        return Container(
          color: Colors.white,
          width: SizeConfig.screenWidth! * 0.9,
          height: SizeConfig.screenHeight! * 0.7,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: images.length,
            itemBuilder: (BuildContext context, int index) {
              return AllCoursesContainer(
                  image: images[index],
                  lessons: lessons[index],
                  courseName: courseName[index],
                  case1: case1[index],
                  case2: case2[index]);
            },
          ),
        );
      },
    );
  }
}
