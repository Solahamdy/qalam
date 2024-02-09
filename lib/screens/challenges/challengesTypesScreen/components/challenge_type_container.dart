import 'package:flutter/material.dart';
import 'package:qalam/core/size_config.dart';
import 'package:qalam/screens/challenges/timeChallengeScreen/time_challenge_screen.dart';
import '../../../../utils/styles.dart';
class ChallengesTypeContainer extends StatelessWidget {
  bool case1 = false;
  bool case2 = false ;
  String image ;
  String challengeName ;
  String text1 ;
  String text2;

  ChallengesTypeContainer({required this.text1,required this.text2,
    required this.challengeName,required this.image,required this.case1,required this.case2,super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const TimeChallengeScreen(),)
            , (route) => false);
      },
      child: Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight!*0.12,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          shadows: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
               Column(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Text(text2,style: Styles.style8g,),
                      Text(text1,style: Styles.style8,)
                    ],
                  )
                ],
              ),
              const Spacer(),
              Column(crossAxisAlignment: CrossAxisAlignment.end,
                children: [
              AnimatedContainer(
              duration: const Duration(milliseconds: 300) ,
                      width: SizeConfig.screenWidth!*0.1,
                      height: SizeConfig.screenHeight!*0.02,
                      decoration: ShapeDecoration(
                        color: case1?case2? const Color(0x26028174):const Color(0xffffebe8):const Color(0xffeeeeee),
                        shape: RoundedRectangleBorder(
              side:  BorderSide(width: 0.50,  color:case1?case2? const Color(0xFF028174):const Color(0xffFF7562):const Color(0xff4f4f4f)),
              borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Center(
                        child: Text(case1? case2?'نشط':'انتهي':'قادم',style:case1?case2? Styles.style8g:Styles.style8:Styles.style8),
                      ),
                    ),
                  SizedBox(height: SizeConfig.screenHeight!*0.01,),
                   Text(challengeName,style: Styles.style12,),
                  Row(
                    children: [
                      const Text('40 مشارك',style: Styles.style8,),
                      SizedBox(width: SizeConfig.screenWidth!*0.02,),
                      const Icon(Icons.groups_rounded,size: 25,color:Colors.grey ,)

                    ],
                  )
                ],
              ),
              SizedBox(width: SizeConfig.screenWidth!*0.04,),
              Container(
                width: SizeConfig.screenWidth!*0.2,
                height: SizeConfig.screenHeight!*0.1,
                padding: const EdgeInsets.all(12),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  image:  DecorationImage(
                      image: AssetImage(image)),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 0.12, color: Color(0xFFCCCCCC)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
