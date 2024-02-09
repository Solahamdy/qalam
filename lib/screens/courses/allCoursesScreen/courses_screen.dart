import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qalam/screens/courses/allCoursesScreen/components/completedCoursesTab/completed_courses_listview.dart';
import 'package:qalam/screens/courses/allCoursesScreen/components/savedCoursesTab/saved_courses_listview.dart';
import '../../../blocs/qalamCubit/qalam_cubit.dart';
import '../../../utils/styles.dart';
import 'components/allCoursesTab/all_courses_listview.dart';
import 'components/inCompleteCoursesTab/incompleted_courses_listview.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Center(child: Text('دوراتي', style: Styles.style16)),
          elevation: 0,
          bottom: const TabBar(
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
                  text: 'المكتملة',
                ),

                Tab(
                  text: 'المحفوظات',
                ),
                Tab(
                  text: 'غير مكتمل',
                ),
                Tab(
                  text: 'كل الدورات',
                ),

              ]),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: TabBarView(
              children: [
                CompletedCoursesListView(),
                SavedCoursesListView(),
                InCompletedCoursesListView(),
                AllCoursesListView(),


              ]),
        ),
      ),
    );
  }
}
