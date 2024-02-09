import 'package:flutter/material.dart';
import '../../../core/size_config.dart';
import '../../../utils/styles.dart';
import '../../login_and_password_forgotten/loginScreen/login_screen.dart';
class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: const Color(0xff028174),
      body: Center(
        child: Column(textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height:SizeConfig.screenHeight!*0.15,),
            const Text('أهلاً بـك في',style: Styles.style20w,),
            SizedBox(height:SizeConfig.screenHeight!*0.05,),
            const Image(image: AssetImage('assets/images/whiteQalam.png'),height: 133 ,width: 169,),
            SizedBox(height: SizeConfig.screenHeight!*0.03,),
            const Text('قم بتنمية مهاراتك في الكتابة والفنون الابداعي',style: Styles.style14w,),
             SizedBox(height:SizeConfig.screenHeight!*0.02,),
            const Text('ثم أنشئ عملك الخاص وسوِّق له',style: Styles.style14w,),
            SizedBox(height: SizeConfig.screenHeight!*0.15,),
            Container(
              height: SizeConfig.screenHeight!*0.09,
              width: SizeConfig.screenWidth!*0.4,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffffffff)
              ),
              child:  Center(
                child: IconButton(onPressed: (){
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context)=> const LoginScreen()));
                },
                  icon:const Icon(Icons.arrow_back_ios_new_outlined,
                    color: Color(0xff4f4f4f),size: 25,) ,),
              ),
            )
          ],
        ),
      ),
    );
  }
}