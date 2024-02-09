import 'package:flutter/material.dart';
import '../core/size_config.dart';
import '../utils/styles.dart';
import 'custom_text.dart';
class CustomButton extends StatelessWidget {
  String text ;
  var fun ;
  CustomButton({this.fun,required this.text,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight!*0.06,
      width: SizeConfig.screenWidth!,
      decoration:  BoxDecoration(color:const Color(0xFF028174) ,
        borderRadius: BorderRadius.circular(6),),
      child: Center(
        child: MaterialButton(
            onPressed: fun,
            child: Center(child:Text(text,style: Styles.style14w,) )),
      ),
    );
  }
}
