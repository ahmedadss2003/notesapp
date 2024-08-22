import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {
 const  CustomTextField({super.key,this.onChanged,this.hint,this.text ,this.keyboardType ,this.horizontalPadding , this.verticalPadding, this.onSaved});

final String? hint;
final double? horizontalPadding , verticalPadding ;
final String? text;
final void Function(String?)? onSaved ;
final Function(String)? onChanged;
final TextInputType? keyboardType ;

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      onSaved: onSaved,
      validator: (value){
        if(value?.isEmpty==true){
          return "Field Is Required" ;
        }else{
          return null ;
        }
      },
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