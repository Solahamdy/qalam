import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qalam/components/custom_button.dart';
import 'package:qalam/screens/challenges/timeChallengeScreen/time_challenge_roles.dart';
import '../../../core/size_config.dart';
import '../../../utils/styles.dart';
import '../challengesTypesScreen/challenges_types_screen.dart';
class TimeChallengeScreen extends StatelessWidget {
  const TimeChallengeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.only(right: 24,left: 24,top: 25,bottom: 25),
        child:Center(
          child: Column(crossAxisAlignment: CrossAxisAlignment.end,
            children: [
               Row(
                children: [
                  SizedBox(width: SizeConfig.screenWidth!*0.2,),
                  const Text('تحدي الوقت',style: Styles.style16,),
                  SizedBox(width: SizeConfig.screenWidth!*0.01,),
                  const Image(image: AssetImage('assets/images/time2.png')),
                  const Spacer(),
                  GestureDetector(onTap: (){
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const ChallengesTypesScreen(),)
                        , (route) => false);
                  },
                      child: const Icon(Icons.arrow_forward_sharp,color: Color(0xffbfbfbf),size: 25,))
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight!*0.03),
              const Text(' : عن التحدي',style: Styles.style12black,),
              const SizedBox(height: 20,),
              SvgPicture.asset('assets/images/timeChallenge.svg'),
              const Spacer(),
              CustomButton(text: 'شارك' ,fun: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const TimeChallengeRoles(),)
                , (route) => false);
              },)
            ],

          ),
        ),
      ),
      ),
    );
  }
}
