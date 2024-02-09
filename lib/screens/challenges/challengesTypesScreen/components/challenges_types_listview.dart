import 'package:flutter/material.dart';
import 'package:qalam/screens/challenges/challengesTypesScreen/components/challenge_type_container.dart';
import '../../../../core/size_config.dart';
class ChallengesTypesListView extends StatelessWidget {
  List <String> challengesImages =['assets/images/time.png','assets/images/content1.png',
    'assets/images/way1.png','assets/images/cooperation1.png'];
  List <String> challengesNames =['تحدي الوقت','تحدي المحتوى','تحدي الأسلوب','تحدي التعاون'];
  List <bool> case1 =[true,true,false,false];
  List <bool> case2 =[true,false,false,false];
  List <String> text1 =[': سينتهي خلال','',' : سيبدأ خلال',' : سيبدأ خلال'];
  List <String> text2 =['12 دقيقة','اطلع على النتائج','يومان','12 دقيقة'];


   ChallengesTypesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight!*0.6,
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 20),
        itemCount:challengesImages.length,
        itemBuilder: (BuildContext context, int index) {
          return  ChallengesTypeContainer(
              text1: text1[index], text2: text2[index],
              challengeName: challengesNames[index], image: challengesImages[index], case1: case1[index], case2: case2[index]);
        },
      ),
    );
  }
}

