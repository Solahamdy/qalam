import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/size_config.dart';
import '../../../../utils/styles.dart';
class ResultsBottomModelSheet extends StatelessWidget {
List<int> rank = [4,5,6,7,8,9,10,11,12,13,14,15];
List<String> image = ['assets/images/win1.png',"assets/images/win2.png",'assets/images/win3.png',
  'assets/images/win1.png',"assets/images/win2.png",'assets/images/win3.png',
  'assets/images/win1.png',"assets/images/win2.png",'assets/images/win3.png',
  'assets/images/win1.png',"assets/images/win2.png",'assets/images/win3.png'
];
List<String> names = ['رنا','محمد','كريم','ندي','عمرو','هشام','هدير','مالك','علي','مريم','ياسين','خالد'];
List<int> score =[22,20,19,18,16,15,14,13,11,9,6,5];
   ResultsBottomModelSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight!*0.4,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount:rank.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                Row(
                  children: [
                     Text(score[index].toString(),style: Styles.style12g,),
                    SizedBox(width: SizeConfig.screenWidth!*0.02,),
                    SvgPicture.asset('assets/images/crown.svg'),
                  ],
                ),
                const Spacer(),
                Text(names[index],style:Styles.style12black,),
                SizedBox(width: SizeConfig.screenWidth!*0.03,),
                Container(
                  width: SizeConfig.screenWidth!*0.1,
                  height: SizeConfig.screenHeight!*0.08,
                  decoration: BoxDecoration(shape: BoxShape.circle,
                      border: Border.all(color: Colors.white,width: 1),
                      image: DecorationImage(image: AssetImage(image[index]),fit: BoxFit.cover)
                  ),
                ),
                SizedBox(width: SizeConfig.screenWidth!*0.1,),
                Text(rank[index].toString(),style:  Styles.style12),
              ],
            ),
          );;
        },
      ),
    );
  }
}
