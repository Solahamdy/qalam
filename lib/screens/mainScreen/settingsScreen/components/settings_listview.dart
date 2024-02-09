import 'package:flutter/material.dart';
import 'package:qalam/screens/mainScreen/settingsScreen/components/setting_container.dart';

import '../../../../core/size_config.dart';
import '../../../../models/settings_model.dart';
class SettingsListView extends StatefulWidget {

  const SettingsListView({super.key});

  @override
  State<SettingsListView> createState() => _SettingsListViewState();
}

class _SettingsListViewState extends State<SettingsListView> {
  List <SettingsModel> settings = [
    SettingsModel(text: 'إدارة حسابي',color: const Color(0xff058376),image: "assets/images/account2.png"),
    SettingsModel(text: 'الخصوصية والآمان',color:const Color(0xff0ab68b),image: "assets/images/lock2.png"),
    SettingsModel(text: 'اللغة',color:const Color(0xff94de8d),image: "assets/images/language2.png"),
    SettingsModel(text: 'الدعم والمساعدة',color:const Color(0xff1ed2ee),image: "assets/images/help2.png"),
    SettingsModel(text: 'إدارة الإشعارات',color:const Color(0xfffc86aa),image: "assets/images/notification2.png"),

  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: SizeConfig.screenHeight!*0.5,
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 20),
        itemCount:settings.length,
        itemBuilder: (BuildContext context, int index) {
          return  SettingContainer(
            color: settings[index].color,
            image: settings[index].image,
            text: settings[index].text,
          );
        },
      ),
    );
  }
}
