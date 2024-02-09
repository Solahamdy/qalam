import 'package:flutter/material.dart';

import '../core/size_config.dart';
import '../screens/challenges/challengesTypesScreen/challenges_types_screen.dart';
import '../screens/courses/allCoursesScreen/courses_screen.dart';
import '../screens/mainScreen/homeScreen/home_screen.dart';
import '../screens/mainScreen/settingsScreen/main_setting.dart';
class NavBar extends StatefulWidget {

    const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int index = 0 ;
  final pages = [
    const SettingsScreen(),
   const ChallengesTypesScreen(),
    const CoursesScreen(),
      const HomeScreen()
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: pages[index],
      bottomNavigationBar:BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.settings),
            backgroundColor: Colors.white,
              label: 'الاعدادات',),
          BottomNavigationBarItem(icon: Icon(Icons.gamepad_outlined),
              label: 'التحديات',
           ),
          BottomNavigationBarItem(icon: Icon(Icons.layers_sharp),
            label: 'دوراتي',),
          BottomNavigationBarItem(icon: Icon(Icons.home),
            label: 'الرئيسية',),
        ],
        unselectedItemColor: const Color(0xffCCCCCC),
        showUnselectedLabels: true,
        selectedItemColor:const Color(0xff028174) ,
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index =value;
          });
        },

      ) ,
    );
  }
}
