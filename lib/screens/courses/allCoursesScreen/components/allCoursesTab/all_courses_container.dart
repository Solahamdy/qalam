import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../../../../blocs/qalamCubit/qalam_cubit.dart';
import '../../../../../core/size_config.dart';
import '../../../../../utils/styles.dart';

class AllCoursesContainer extends StatefulWidget {
  String courseName;
  String lessons;
  String image;
  bool case1 = false;
  bool case2 = false ;

  AllCoursesContainer(
      {required this.image,
      required this.lessons,
      required this.courseName,
        required this.case1,
        required this.case2,
      super.key});

  @override
  State<AllCoursesContainer> createState() => _AllCoursesContainerState();
}

class _AllCoursesContainerState extends State<AllCoursesContainer> {
  late double ratingValue = 3;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QalamCubit, QalamState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = QalamCubit.get(context);
        return Container(
          margin: const EdgeInsets.all(10),
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight! * 0.15,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            shadows: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: SizeConfig.screenWidth! * 0.15,
                      height: SizeConfig.screenHeight! * 0.02,
                      decoration: ShapeDecoration(
                        color:cubit.color,
                        shape: RoundedRectangleBorder(
                          side:  BorderSide(
                            width: 0.50, color: cubit.borderColor!,),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Center(
                        child: Text('${cubit.type}',style: cubit.style,),
                      ),
                    ),
                    Text(
                      widget.courseName,
                      style: Styles.style12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          widget.lessons,
                          style: Styles.style8,
                        ),
                        SizedBox(
                          width: SizeConfig.screenWidth! * 0.02,
                        ),
                        const Icon(
                          Icons.video_collection_outlined,
                          size: 10,
                          color: Color(0xff777777),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '(${ratingValue.toString()})',
                          style: Styles.style8,
                        ),
                        SizedBox(
                          width: SizeConfig.screenWidth! * 0.02,
                        ),
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 10,
                          textDirection: TextDirection.rtl,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 2.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            setState(() {
                              ratingValue = rating;
                              print(rating);
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: SizeConfig.screenHeight! * 0.23,
                  width: SizeConfig.screenWidth! * 0.26,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(widget.image), fit: BoxFit.fill),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
