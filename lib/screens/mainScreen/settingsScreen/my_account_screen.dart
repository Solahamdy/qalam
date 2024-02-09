import 'package:flutter/material.dart';
import 'package:qalam/components/navigation_bar.dart';
import '../../../components/custom_button.dart';
import '../../../components/register_login_text_field.dart';
import '../../../core/size_config.dart';
import '../../../utils/styles.dart';
import 'main_setting.dart';
class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:const EdgeInsets.only(right: 24,left: 24,top: 25,bottom: 20),
            child: Center(
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text('حسابي',style: Styles.style16, textAlign: TextAlign.center),
                      SizedBox(width: SizeConfig.screenWidth!*0.26,),
                      IconButton(onPressed:(){} ,
                        icon:const Icon(Icons.arrow_forward_outlined),color: const Color(0xffBFBFBF),
                        iconSize: 20,),
                    ],
                  ),
                   Stack(alignment: Alignment.bottomRight,
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundColor: Color(0xfff6f6f6),
                        child: Image(image: AssetImage('assets/images/person.png')),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 2,
                            )
                          ]
                        ),
                        child: const CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white,
                          child: Image(image: AssetImage('assets/images/camera-line.png')),
          
                        ),
                      ),
                    ],
                  ),
                  Column(crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: SizeConfig.screenHeight!*0.05,),
                      const Text('الاسم',style: Styles.style12),
                      RegisterLoginTextField(),
                      const SizedBox(height: 10,),
                      const Text('البريد الالكتروني',style: Styles.style12),
                      RegisterLoginTextField(),
                      const SizedBox(height: 10,),
                      const Text('العنوان',style: Styles.style12),
                      RegisterLoginTextField(),
                      const SizedBox(height: 10,),
                      const Text('كلمة المرور',style: Styles.style12),
                      RegisterLoginTextField(icon: Icons.visibility_outlined),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80,bottom: 8,left: 8,right: 8),
                    child: CustomButton( text: 'حفظ التغييرات',
                        fun: (){
                          Navigator.pushAndRemoveUntil(context,
                              MaterialPageRoute(builder: (BuildContext context)=> const NavBar()),
                                  (route) => false);
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
