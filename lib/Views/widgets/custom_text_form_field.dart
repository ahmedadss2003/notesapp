import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
   CustomTextField({super.key,this.onChanged,this.hint,this.text ,this.keyboardType ,this.horizontalPadding , this.verticalPadding});

String? hint;
double? horizontalPadding , verticalPadding ;
String? text;
Function(String)? onChanged;
TextInputType? keyboardType ;

  @override
  Widget build(BuildContext context) {
    return  TextField(
      keyboardType:keyboardType ,
      onChanged:onChanged,
            decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: horizontalPadding! ,vertical: verticalPadding!),
            focusedBorder:const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                color: Colors.white,
              )
            ) ,
            label: Text(
              '$hint',
              style:const  TextStyle(
                color: Colors.white,
              ),
              ),
              
              enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                color: Colors.white,
                  ),

              ),
            ),
          );
  }
}