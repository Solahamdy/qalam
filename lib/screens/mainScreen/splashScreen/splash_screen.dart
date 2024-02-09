import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/size_config.dart';
import '../startScreen/strart_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
        const Duration(seconds: 1),(){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context)=> const StartScreen()));
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height:SizeConfig.screenHeight!*0.15,),
           Image(image: const AssetImage('assets/images/greenQalam.png'),
               width:SizeConfig.screenWidth!*0.8,height: SizeConfig.screenHeight!*0.3),
             SizedBox(height: SizeConfig.screenHeight!*0.1,),
             const CupertinoActivityIndicator(radius: 25,)
          ],
        ),
      ),
    );
  }
}

