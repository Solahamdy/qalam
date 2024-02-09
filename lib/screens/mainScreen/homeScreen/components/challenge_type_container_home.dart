import 'package:flutter/material.dart';
import '../../../../core/size_config.dart';
import '../../../../utils/styles.dart';

class ChallengesTypeContainerHome extends StatelessWidget {
  String challengeName ;
  String image ;
   ChallengesTypeContainerHome({required this.image,required this.challengeName,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5,left: 5),
      height: SizeConfig.screenHeight!*0.09,
      width: SizeConfig.screenHeight!*0.09,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
          color:Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ]
      ),
      child: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage(image),),
          const SizedBox(height: 5,),
          Text(challengeName,style: Styles.style8bold,)
        ],
      )),
    );
  }
}
