import 'package:flutter/material.dart';

import '../../../core/size_config.dart';
import '../../../utils/styles.dart';
import 'components/settings_listview.dart';

class SettingsScreen extends StatelessWidget {
   const SettingsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children:[ Padding(
            padding: const EdgeInsets.only(right: 15,left: 15,top: 25),
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight!*0.05,),
                  const Text('الإعدادات',style: Styles.style16,),
                  SizedBox(height: SizeConfig.screenHeight!*0.1,),
                  const SettingsListView(),

                ],
              ),
            ),
          ),
        ]),
      ),

    );
  }
}
