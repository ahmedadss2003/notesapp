import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const  CustomButton({super.key,this.onPressed ,required this.text, this.isLoading =false});
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
        ),
        onPressed: onPressed,
        child:isLoading?const SizedBox(
          width: 20,
          height: 20,
          child:  CircularProgressIndicator(
            color: Colors.black ,
            
          ),
        ) : Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
