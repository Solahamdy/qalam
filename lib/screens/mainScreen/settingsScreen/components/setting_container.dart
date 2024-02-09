import 'package:flutter/material.dart';
import 'package:qalam/screens/mainScreen/settingsScreen/my_account_screen.dart';
import 'package:qalam/utils/styles.dart';
class SettingContainer extends StatelessWidget {
  String text ;
  String image;
  Color color ;
   SettingContainer({required this.color,required this.text,required this.image,super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (context) => const MyAccountScreen() ,), (route) => false);
      },
      child: Container(
        height: 48,
        width: 296,
        decoration: BoxDecoration(
          color: const Color(0xfffafcfc),
          borderRadius: BorderRadiusDirectional.circular(15),
        ),
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.arrow_back_ios,size: 15,color: Color(0xff4f4f4f),)),
              const Spacer(),
              Text(text,style: Styles.style12),
              const SizedBox(width: 30,),
              Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                    color: color,
                  borderRadius: BorderRadiusDirectional.circular(8)
                ),
                child: Image(image: AssetImage(image)),
              )

            ],
          ),
        ) ,
      ),
    );
  }
}
