import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   const CustomButton({super.key, required this.icon, this.onPressed});
  final IconData icon ;
  final void Function()? onPressed ;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(15)
      ),
      child: Center(
        child: IconButton(
          onPressed: onPressed ,
          icon: Icon(
            icon ,
            size: 30,
           ),
        ),
      ),
    );
  }
}