import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qalam/blocs/authenticationCubit/authentication_cubit.dart';
import 'package:qalam/components/navigation_bar.dart';
import 'package:qalam/screens/login_and_password_forgotten/forgetPasswordScreen/forget_password_screen.dart';
import 'package:qalam/screens/mainScreen/homeScreen/home_screen.dart';
import '../../../components/custom_button.dart';
import '../../../components/custom_text.dart';
import '../../../components/register_login_text_field.dart';
import '../../../core/size_config.dart';
import '../../../utils/styles.dart';
import '../registerScreen/register_screen.dart';
import 'components/facebook_google_container.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationCubit, AuthenticationState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AuthenticationCubit.get(context);
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Form(
                key: cubit.formKey,
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 15, left: 15, top: 25, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    textDirection: TextDirection.rtl,
                    children: [
                       Align(
                          alignment: Alignment.topLeft,
                          child: TextButton(onPressed: (){
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                    const NavBar()),
                                    (route) => false);
                          },
                              child: const Text('تخطي', style: Styles.style14g))),
                      Center(
                        child: Image(
                            image: const AssetImage(
                                'assets/images/greenQalam.png'),
                            height: SizeConfig.screenHeight! * 0.2,
                            width: SizeConfig.screenWidth! * 0.8),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight! * 0.05,
                      ),
                      const Text('البريد الالكتروني', style: Styles.style12),
                      RegisterLoginTextField(
                        controller: cubit.emailController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return ' البريد الالكتروني مطلوب';
                          } else if (!value.endsWith('.com')) {
                            return 'البريد الالكتروني يجب ان ينتهي ب .com';
                          }
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('كلمة المرور', style: Styles.style12),
                      RegisterLoginTextField(
                          icon: Icons.visibility_outlined,
                          controller: cubit.passwordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'كلمة المرور مطلوبة';
                            }
                          }),
                      TextButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ForgetPasswordScreen(),
                                ),
                                    (route) => false);
                          },
                          child: CustomText(
                            text: 'نسيت كلمة المرور؟',
                            color: const Color(0xff028174),
                            size: 12,
                            isBold: false,
                            decoration: TextDecoration.underline,
                          )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomButton(
                            text: 'تسجيل الدخول',
                            fun: () {
                              if (cubit.formKey.currentState!.validate()) {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const NavBar(),
                                    ),
                                    (route) => false);
                              }
                            }),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'أو',
                              style: Styles.style14b,
                            )),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FacebookGoogleContainer(
                              text: 'Google',
                              image: 'assets/images/google.png'),
                          FacebookGoogleContainer(
                              text: 'Facebook',
                              image: 'assets/images/facebook.png'),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            const RegisterScreen()),
                                    (route) => false);
                              },
                              child: CustomText(
                                text: 'انشئ حساب جديد',
                                color: const Color(0xFF028174),
                                size: 12,
                                isBold: false,
                                decoration: TextDecoration.underline,
                              )),
                          CustomText(
                              size: 12,
                              color: const Color(0xff353535),
                              isBold: false,
                              text: 'ليس لديك حساب؟'),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
