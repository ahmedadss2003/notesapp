import 'package:flutter/material.dart';
import 'package:notesapp/widgets/notes_list_view.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
    CustomButton({super.key,this.onPressed ,required this.text});
  final String text;
  VoidCallback? onPressed;
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
        child: Text(
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
