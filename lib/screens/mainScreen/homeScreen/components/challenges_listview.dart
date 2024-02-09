import 'package:flutter/material.dart';
import '../../../../core/size_config.dart';
import 'challenge_type_container_home.dart';
class ChallengesListView extends StatelessWidget {
  List <String> challengesNames =['تحدي الوقت','تحدي المحتوى','تحدي الأسلوب','تحدي التعاون'];
  List <String> challengesImages =['assets/images/time.png','assets/images/content1.png',
    'assets/images/way1.png','assets/images/cooperation1.png'];

   ChallengesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight!*0.12,
      child: Padding(
        padding: const EdgeInsets.symmetric( horizontal:24),
        child: ListView.builder(
          reverse: true,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount:challengesNames.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: (){
              },
              child: Center(
                child: ChallengesTypeContainerHome(
                  challengeName: challengesNames[index],
                  image: challengesImages[index],
                )
              ),
            );
          },
        ),
      ),

    );
  }
}
