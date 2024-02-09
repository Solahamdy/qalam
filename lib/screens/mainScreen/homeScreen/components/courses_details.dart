import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:qalam/components/rating.dart';
import 'package:qalam/core/size_config.dart';
import 'package:qalam/utils/styles.dart';
class CoursesDetails extends StatefulWidget {
  String courseName ;
  String image;
  String lessons ;
   CoursesDetails({required this.courseName,required this.image,required this.lessons,super.key});

  @override
  State<CoursesDetails> createState() => _CoursesDetailsState();
}

class _CoursesDetailsState extends State<CoursesDetails> {


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 4,left: 10),
      height: SizeConfig.screenHeight!*0.26,
      width: SizeConfig.screenWidth!*0.51,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ]),
      child: Padding(
        padding:  const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: SizeConfig.screenHeight!*0.15,
              width: SizeConfig.screenWidth!*0.5,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image:  DecorationImage(image: AssetImage(widget.image),fit: BoxFit.fill),
                  ),),
            SizedBox(
              height: SizeConfig.screenHeight!*0.03,
              width: SizeConfig.screenWidth,
              child: Row(
                 children: [
                   IconButton(
                       onPressed: (){}, icon:const Icon(Icons.bookmark_outline,size: 18,color: Color(0xff777777),)),
                   const Spacer(),
                    Text(widget.courseName,style: Styles.style12,),

                 ],
               ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight!*0.03,
              width: SizeConfig.screenWidth,
              child:  Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                   Text(widget.lessons,style: Styles.style8,),
                  SizedBox(width: SizeConfig.screenWidth!*0.02,),
                  const Icon(Icons.video_collection_outlined,size: 10,color: Color(0xff777777),),
                ],
              ),
            ),

            const Rating(),

          ],
        ),
      ),

    );
  }
}
