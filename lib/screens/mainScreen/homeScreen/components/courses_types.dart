import 'package:flutter/material.dart';
import '../../../../utils/styles.dart';
class CoursesTypes extends StatefulWidget {
  bool isActive = false ;
  String text ;
   CoursesTypes({required this.text,required this.isActive,super.key});

  @override
  State<CoursesTypes> createState() => _CoursesTypesState();
}

class _CoursesTypesState extends State<CoursesTypes> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300) ,
      width: 61,
      height: 50,
      decoration: ShapeDecoration(
          color: widget.isActive? const Color(0x26028174):Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.50, color: Color(0xFF028174)),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: Center(
        child: Text(widget.text,style:widget.isActive? Styles.style8g:Styles.style8,),
      ),
    );
  }
}
