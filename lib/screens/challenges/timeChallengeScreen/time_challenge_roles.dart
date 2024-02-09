import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qalam/components/custom_button.dart';
import 'package:qalam/screens/challenges/challengesResultScreen/challenge_result_screen.dart';
import 'package:qalam/screens/challenges/timeChallengeScreen/time_challenge_screen.dart';
import '../../../core/size_config.dart';
import '../../../utils/styles.dart';
import '../challengesResultScreen/components/bottom_model_sheet.dart';
class TimeChallengeRoles extends StatelessWidget {
  const TimeChallengeRoles({super.key});

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
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const TimeChallengeScreen(),)
                        , (route) => false);
                  },
                      child: const Icon(Icons.arrow_forward_sharp,color: Color(0xffbfbfbf),size: 25,))
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight!*0.03),
              const Text(' : عن التحدي',style: Styles.style12black,),
              const SizedBox(height: 20,),
              SvgPicture.asset('assets/images/timeRoles.svg'),
              const Spacer(),
              CustomButton(text: 'أطلع على النتائج',fun: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const ChallengeResultScreen(),)
                    , (route) => false);
                showModalBottomSheet(context: context,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.only( topStart: Radius.circular(16),topEnd: Radius.circular(16))
                    ),
                    showDragHandle: true,
                    elevation: 0,
                    constraints:  const BoxConstraints(maxHeight: 320),
                    useSafeArea: true,

                    backgroundColor: Colors.white,
                    builder:(context){
                      return  ResultsBottomModelSheet();
                    });
              },)





            ],

          ),
        ),
      ),
      ),
    );
  }
}
