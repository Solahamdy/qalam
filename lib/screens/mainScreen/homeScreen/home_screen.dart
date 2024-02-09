import 'package:flutter/material.dart';

import '../../../core/size_config.dart';
import '../../../utils/styles.dart';
import 'components/challenges_listview.dart';
import 'components/courses_details_listview.dart';
import 'components/courses_types_listview.dart';
import 'components/green_oval.dart';
import 'components/home_screen_head.dart';
import 'components/search_text_field.dart';
import 'components/trainers_listview.dart';



class HomeScreen extends StatelessWidget {

   const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Stack(children: [
          const GreenOval(),
          Positioned(
              top: 30,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                child: Column(
                  textDirection: TextDirection.rtl,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const HomeScreenHead(),
                    const SizedBox(
                      height: 10,
                    ),
                    const SearchTextField(),
                    SizedBox(height: SizeConfig.screenHeight!* 0.03,),
                    const CoursesTypesListView(),
                    SizedBox(height: SizeConfig.screenHeight!* 0.03,),
                  ],
                ),
              )),
                 Stack(
                     children:[
                       Positioned(top:220,
                           child: CoursesDetailsListView())]),
            const Positioned(
            top: 450,
            left: 0,
            right: 24,
            child: Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('التحديات',style: Styles.style16,),
              ],
            ),
          ),
          Stack(
              children:[
                Positioned(top:460,
                  child:  ChallengesListView(),)]),
          const Positioned(
            top: 560,
            left: 0,
            right: 24,
            child: Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('أفضل المدربين',style: Styles.style16,),
              ],
            ),
          ),
          Stack(
              children:[
                Positioned(top:580,
                  child:  TrainersListView(),)]),
        ]),
      ),
    );
  }
}
