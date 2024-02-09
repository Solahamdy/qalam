import 'package:flutter/material.dart';
import 'package:qalam/components/navigation_bar.dart';
import 'package:qalam/screens/challenges/challengesTypesScreen/components/challenge_type_container.dart';
import 'package:qalam/screens/challenges/challengesTypesScreen/components/challenges_types_listview.dart';

import '../../../core/size_config.dart';
import '../../../utils/styles.dart';
class ChallengesTypesScreen extends StatelessWidget {

   const ChallengesTypesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
            children:[ Padding(
              padding: const EdgeInsets.only(right: 24,left: 24,top: 25),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: SizeConfig.screenHeight!*0.05,),
                     Row(mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                      const Text('التحديات',style: Styles.style16,),
                      const SizedBox(width: 80,),
                      IconButton(icon: const Icon(Icons.arrow_forward),onPressed: (){

                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const NavBar() ,), (route) => false);
                      },)
                    ],),
                    SizedBox(height: SizeConfig.screenHeight!*0.1,),
                    ChallengesTypesListView()


                  ],
                ),
              ),
            ),
            ]),
      ),

    );
  }
}

