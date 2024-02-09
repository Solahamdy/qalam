import 'package:flutter/material.dart';

import '../../../../utils/styles.dart';
class TrainersCircleAvatar extends StatelessWidget {
  String trainerName ;
  String trainerImage;
   TrainersCircleAvatar({required this.trainerImage,required this.trainerName,super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const  EdgeInsets.only(left: 10),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(trainerImage),
            radius: 30,
          ),
          const SizedBox(height: 5,),
          Text(trainerName,style: Styles.style8,)
        ],
      ),
    );
  }
}
