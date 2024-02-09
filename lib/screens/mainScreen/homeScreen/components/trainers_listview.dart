import 'package:flutter/material.dart';
import 'package:qalam/screens/mainScreen/homeScreen/components/trainers_circle_avatar.dart';
import '../../../../core/size_config.dart';
import '../../../../models/trainers_model.dart';
class TrainersListView extends StatelessWidget {
  List<TrainersModel> trainers =[
    TrainersModel(trainerName: 'سلمي',
  trainerImage: 'assets/images/salma.png'),
  TrainersModel(trainerName: 'أحمد',
  trainerImage: 'assets/images/ahmed.png'),
    TrainersModel(trainerName: 'ندي',
        trainerImage: 'assets/images/nada.png'),
    TrainersModel(trainerName: 'محمد',
        trainerImage: 'assets/images/mohamed.png'),
    TrainersModel(trainerName: 'رنا',
        trainerImage: 'assets/images/rana.png'),
    TrainersModel(trainerName: 'كريم',
        trainerImage: 'assets/images/kareem.png'),
  ];
   TrainersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight!*0.1,
      child: Padding(
        padding: const EdgeInsets.only(right: 24),
        child: ListView.builder(
          reverse: true,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount:trainers.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: (){
              },
              child: Center(
                child: TrainersCircleAvatar(
                  trainerName: trainers[index].trainerName,
                  trainerImage: trainers[index].trainerImage,
                )
              ),
            );
          },
        ),
      ),

    );
  }
}
