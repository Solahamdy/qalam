import 'package:flutter/material.dart';
import '../../../../components/custom_text.dart';
import '../../../../core/size_config.dart';
class FacebookGoogleContainer extends StatelessWidget {
  String image ;
  String text ;
   FacebookGoogleContainer({ required this.image,required this.text,super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        height: SizeConfig.screenHeight!*0.06,
        width: SizeConfig.screenWidth!*0.43,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF777777)),
          borderRadius: BorderRadius.circular(9),
          color: Colors.white
        ),
        child:  Row( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image:  AssetImage(image),
              height:SizeConfig.screenHeight!*0.03 , width: SizeConfig.screenWidth!*0.05,),
            const SizedBox(width: 8,),
            CustomText(size: 13, color: Colors.grey, isBold: false, text: text)
          ],
        ),
      ),
    );
  }
}
