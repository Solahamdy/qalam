import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/size_config.dart';
import '../../../../utils/styles.dart';

class WinnerColumn extends StatelessWidget {
  String image;
  String name;
  int score;
  WinnerColumn({required this.score,required this.name,required this.image,super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: SizeConfig.screenWidth!*0.2,
            height: SizeConfig.screenHeight!*0.1,
            decoration: BoxDecoration(shape: BoxShape.circle,
              border: Border.all(color: Colors.white,width: 1),
              image:  DecorationImage(image: AssetImage(image),fit: BoxFit.cover)
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight!*0.02,),
           Text(name,style:Styles.style10w,),
          SizedBox(height: SizeConfig.screenHeight!*0.02,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text(score.toString(),style: Styles.style11,),
              SizedBox(width: SizeConfig.screenWidth!*0.02,),
              SvgPicture.asset('assets/images/crown.svg'),

            ],
          ),
        ],
      ),
    );
  }
}
