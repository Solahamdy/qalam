import 'package:flutter/material.dart';
import 'package:qalam/core/size_config.dart';
import 'package:qalam/utils/styles.dart';

class CourseContentTab extends StatelessWidget {
  String title;
  int rank;

  CourseContentTab({required this.rank, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight!*0.08,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ]
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  title,
                  style: Styles.style10,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '5 دقائق',
                  style: Styles.style8bold,
                ),
              ],
            ),
            const SizedBox(
              width: 15,
            ),
            CircleAvatar(
              backgroundColor: const Color(0xffd9ecea),
              child: Center(
                  child: Text(
                    rank.toString(),
                    style: Styles.style20g,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
