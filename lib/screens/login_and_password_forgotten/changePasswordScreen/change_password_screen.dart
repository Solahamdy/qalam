import 'package:flutter/material.dart';
import '../../../components/custom_button.dart';
import '../../../components/register_login_text_field.dart';
import '../../../core/size_config.dart';
import '../../../utils/styles.dart';
import '../loginScreen/login_screen.dart';
class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:const EdgeInsets.only(right: 15,left: 15,top: 25,bottom: 20),
          child: Center(
            child: Column(textDirection: TextDirection.rtl,
              children: [
                SizedBox(height: SizeConfig.screenHeight!*0.1,),
                Image(image: const AssetImage('assets/images/changePass.png'),
                    height: SizeConfig.screenHeight!*0.2,width: SizeConfig.screenWidth!*0.8),
                SizedBox(height: SizeConfig.screenHeight!*0.02,),
                const Text('تغيير كلمة المرور',style: Styles.style20g),
                SizedBox(height: SizeConfig.screenHeight!*0.01,),
                const Text('قم بتعيين كلمة مرور جديدة',style: Styles.style8,),
                SizedBox(height: SizeConfig.screenHeight!*0.02,),
                const Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('كلمة المرور الجديدة',style: Styles.style12),
                  ],
                ),
                RegisterLoginTextField(icon: Icons.visibility_outlined),
                SizedBox(height: SizeConfig.screenHeight!*0.01,),
                const Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('تأكيد كلمة المرور',style: Styles.style12),
                  ],
                ),
                RegisterLoginTextField(icon: Icons.visibility_outlined),
                Padding(
                  padding: const EdgeInsets.only(top: 30,bottom: 8,left: 8,right: 8),
                  child: CustomButton( text: 'تغيير',
                      fun: (){
                        Navigator.pushAndRemoveUntil(context,
                            MaterialPageRoute(builder: (BuildContext context)=> const LoginScreen()),
                                (route) => false);
                      }),
                ),
              ],


            ),
          ),
        ),
      ),
    );
  }
}
