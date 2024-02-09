import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/size_config.dart';
import '../../../../utils/styles.dart';
class HomeScreenHead extends StatelessWidget {
  const HomeScreenHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height :SizeConfig.screenHeight!*0.08,
          width: SizeConfig.screenHeight!*0.08,
          decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10)),
          child: const Image(image: AssetImage('assets/images/notify.png')
          ),
        ),
        const Spacer(),
        Column(crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text('أهلاً سلمى محمد',style: Styles.style14w,),
            SizedBox(height: SizeConfig.screenHeight!*0.02,),
            const Text('المستوى : 0',style: Styles.style11,)
          ],
        ),
        SizedBox(width: SizeConfig.screenWidth!*0.05,),
        Stack(alignment: Alignment.bottomCenter,
          children: [
            Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: [0.5,0.5],
                    colors: [Colors.white,Color(0xff028174)],
                  ),
                ),
                height: 70,
                width: 70,
                child: Center(
                  child: Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color:Color(0xff1a9d7f)
                    ),
                    height: 62,
                    width: 62,
                    child:const Center(
                      child: CircleAvatar(
                        radius: 28,
                        backgroundColor: Color(0xfff6f6f6),
                        child: Image(image: AssetImage('assets/images/person.png'),height: 30,width: 30),
                      ),
                    ),
                  ),
                )
            ),
            Container(
              width: 50,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(10),
                color: const Color(0xff028174),
                border: Border.all(color: Colors.white,width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('0',style: Styles.style8bold,),
                    SvgPicture.asset('assets/images/crown.svg')

                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
