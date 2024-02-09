import 'package:flutter/material.dart';
import 'package:qalam/screens/challenges/challengesResultScreen/components/winner_column.dart';
import '../../../core/size_config.dart';
import '../../../utils/styles.dart';
import '../timeChallengeScreen/time_challenge_roles.dart';
class ChallengeResultScreen extends StatelessWidget {
  const ChallengeResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xff028174),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 24,left: 24,top: 25,bottom: 25),
          child: Stack(
            children:[ Column(crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    SizedBox(width: SizeConfig.screenWidth!*0.28,),
                    const Text('تحدي الوقت',style: Styles.style16w,),
                    SizedBox(width: SizeConfig.screenWidth!*0.28,),
                   GestureDetector(onTap: (){
                     Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const TimeChallengeRoles(),)
                         , (route) => false);
                   },
                       child: const Icon(Icons.arrow_forward_sharp,color: Colors.white,size: 25,))
                  ],
                ),
              ],
            ),
              Stack(
                children: [
                  Positioned(top: 140,
                      right: 0,
                      left: 0,
                      child: Opacity(
                        opacity: 0.3,
                        child: Container(
                          width: 250,
                          height: 250,
                          decoration:
                          ShapeDecoration(
                            color: const Color(0xFFFFD183).withOpacity(0.2),
                            shadows: [
                              BoxShadow(
                                color: const Color(0xFFFFD183).withOpacity(0.9),
                                spreadRadius: 50,
                                blurRadius: 50,
                              )
                            ],
                            shape: const CircleBorder(side: BorderSide.none),
                          ),
                        ),
                      ))
                ],
              ),
               Stack(children: [
                Positioned(top: 145,
                    right: 20,
                    child:
                WinnerColumn(image: 'assets/images/win3.png',name: 'يوسف',score: 23,))
              ]),
              Stack(children: [
                Positioned(top: 90,
                    right: 100,
                    left: 100,
                    child:
                    WinnerColumn(image: 'assets/images/win1.png',name: 'سلمي',score: 30,))
              ]),
              Stack(children: [
                Positioned(top: 120,
                    left: 20,
                    child:
                    WinnerColumn(image: 'assets/images/win2.png',name: 'أحمد',score: 25,))
              ]),

              const Stack(
                children: [
                  Positioned(top: 220,
                      right: 0,
                      left: 0,
                      child: Image(image: AssetImage('assets/images/rank.png')))
                ],
              ),
         ] ),
        ),
      ),

    );
  }
}
