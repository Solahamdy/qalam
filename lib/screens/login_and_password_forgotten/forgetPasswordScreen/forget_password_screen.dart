import 'package:flutter/material.dart';
import '../../../components/custom_button.dart';
import '../../../components/custom_text.dart';
import '../../../components/register_login_text_field.dart';
import '../../../core/size_config.dart';
import '../../../utils/styles.dart';
import '../loginScreen/login_screen.dart';
import '../verifyPasswordScreen/verify_password_screen.dart';
class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 15,left: 15,top: 25,bottom: 20),
          child: Center(
            child: Column( textDirection: TextDirection.rtl,
              children: [
                SizedBox(height: SizeConfig.screenHeight!*0.1,),
                Image(image: const AssetImage('assets/images/forgetPass.png'),
                    height: SizeConfig.screenHeight!*0.2,width: SizeConfig.screenWidth!*0.8),
                SizedBox(height: SizeConfig.screenHeight!*0.02,),
                const Text('إعادة تعيين كلمة المرور',style: Styles.style20g),
                SizedBox(height: SizeConfig.screenHeight!*0.01,),
                const Text('ادخل عنوان بريدك الالكتروني',style: Styles.style8,),
                SizedBox(height: SizeConfig.screenHeight!*0.01,),
                const Text ('سنرسل لك رمزًا عبر البريد الالكتروني لإعادة تعيين كلمة المرور',style: Styles.style8,),
                SizedBox(height: SizeConfig.screenHeight!*0.1,),
                const Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('البريد الالكتروني',style: Styles.style12),
                  ],
                ),
                RegisterLoginTextField(),
                Padding(
                  padding: const EdgeInsets.only(top: 30,bottom: 8,left: 8,right: 8),
                  child: CustomButton( text: 'أرسل',
                      fun: (){
                        Navigator.pushAndRemoveUntil(context,
                            MaterialPageRoute(builder: (BuildContext context)=> const VerifyPasswordScreen()),
                                (route) => false);
                      }),
                ),

                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(onPressed: (){
                      Navigator.pushAndRemoveUntil(context,
                          MaterialPageRoute(builder: (BuildContext context)=>const LoginScreen()),
                              (route) => false);
                    }, child: CustomText(
                      text: 'العودة لتسجيل الدخول',color: const Color(0xFF028174),size: 12,isBold: false,decoration: TextDecoration.underline,
                    )),
                    CustomText(size: 12, color: const Color(0xff353535), isBold: false, text: 'تذكرت كلمة المرور ؟'),

                  ],
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
