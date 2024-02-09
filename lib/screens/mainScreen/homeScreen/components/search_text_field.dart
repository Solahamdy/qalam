import 'package:flutter/material.dart';

import '../../../../utils/styles.dart';
class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.only(top: 10,),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
          color:Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ]
      ),
      child: TextFormField(
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
        style: const TextStyle(fontSize: 10),
        decoration: InputDecoration(
          hintText: 'بحث',
          hintStyle: Styles.style12,
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none),
          border:OutlineInputBorder(borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none),
          suffixIcon: const Icon(Icons.search , color: Color(0xFF777777),size: 22),
        ),
      ),
    );
  }
}
