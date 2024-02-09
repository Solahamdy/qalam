import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qalam/blocs/registerCubit/register_cubit.dart';
import '../../../components/custom_button.dart';
import '../../../components/custom_text.dart';
import '../../../components/register_login_text_field.dart';
import '../../../core/size_config.dart';
import '../../../utils/styles.dart';
import '../forgetPasswordScreen/forget_password_screen.dart';
import '../loginScreen/components/facebook_google_container.dart';
import '../loginScreen/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {

      },
      builder: (context, state) {
        var cubit = RegisterCubit.get(context);
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Form(
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 15, left: 15, top: 25, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    textDirection: TextDirection.rtl,
                    children: [
                      const Align(
                          alignment: Alignment.topLeft,
                          child: Text('تخطي', style: Styles.style14g)),
                      Center(
                        child: Image(
                            image: const AssetImage(
                                'assets/images/greenQalam.png'),
                            height: SizeConfig.screenHeight! * 0.2,
                            width: SizeConfig.screenWidth! * 0.8),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight! * 0.08,
                      ),
                      const Text('الاسم', style: Styles.style12),
                      RegisterLoginTextField( validator:  (value) {
                        if (value == null || value.isEmpty) {
                          return 'الاسم مطلوب';
                        }
                      },
                        controller: cubit.userNameController,
                      ),
                      const SizedBox(
                        height: 10,
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
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 8, left: 8, right: 8),
                        child: CustomButton(
                            text: 'أنشئ حساب',
                            fun: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                      const LoginScreen()),
                                      (route) => false);
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
                                if (cubit.formKey.currentState!.validate()) {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const LoginScreen(),
                                      ),
                                          (route) => false);
                                }
                              },
                              child: CustomText(
                                text: 'سجِّل الدخول',
                                color: const Color(0xFF028174),
                                size: 12,
                                isBold: false,
                                decoration: TextDecoration.underline,
                              )),
                          CustomText(
                              size: 12,
                              color: const Color(0xff353535),
                              isBold: false,
                              text: 'لديك حساب بالفعل ؟'),
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
    );;
  }
}
