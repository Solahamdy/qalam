import 'dart:ui';

import 'package:flutter/material.dart';
class RegisterLoginTextField extends StatelessWidget{
  var icon ;
  var validator ;
  var controller ;
  var keyboardType;

  RegisterLoginTextField({this.keyboardType,this.icon, this.validator,this.controller,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.only(top: 10,),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
        color:Colors.white),
      child: TextFormField(
        validator: validator,
        controller: controller,
        keyboardType: keyboardType,
        textDirection: TextDirection.rtl,cursorColor: Colors.black12,
        style: const TextStyle(fontSize: 15,),
        decoration: InputDecoration(contentPadding: const EdgeInsets.all(20),
          errorStyle: const TextStyle(fontSize: 15,),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8)),
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color:Color(0xFF777777))),
            border:OutlineInputBorder(borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Color(0xFF777777))),
            prefixIcon: Icon(icon , color: const Color(0xFF777777),size: 22),
        ),
      ),
    );
  }
}