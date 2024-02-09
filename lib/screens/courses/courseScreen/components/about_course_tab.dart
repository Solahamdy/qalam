import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qalam/core/size_config.dart';
import 'package:qalam/utils/styles.dart';
class AboutCourseTab extends StatelessWidget {
  const AboutCourseTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Text(' : المُحاضر',style: Styles.style12black,),
          const SizedBox(height: 10,),
          const Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('اسم المدرب',style: Styles.style10,),
                  SizedBox(height: 10,),
                  Text('مشرف في الإبداع الكتابي',style:Styles.style8bold,),
                  SizedBox(width: 10,),
                ],
              ),
              SizedBox(width: 10,),
              CircleAvatar(radius: 20,
                foregroundImage: AssetImage('assets/images/salma.png'),),
            ],
          ),
          const SizedBox(height: 10,),
          const Text(': وصف الدورة',style: Styles.style12black,),
          const SizedBox(height: 10,),
          SvgPicture.asset('assets/images/courseDescription.svg',width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight!*0.25,)
        ],
      ),
    );
  }
}
