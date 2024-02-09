import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {
  String text ;
  Color color ;
  double size ;
  bool isBold = false;
  var decoration ;
  CustomText({this.decoration,required this.size,required this.color,required this.isBold,required this.text,super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text,style:TextStyle(color: color,fontSize: size,
        fontFamily: 'Almarai',
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal ,decoration:decoration),
        maxLines: 5, softWrap: true,overflow: TextOverflow.ellipsis,);
  }
}