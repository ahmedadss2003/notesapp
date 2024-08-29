import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon, this.onPressed});
  final String title;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const SizedBox(height: 60,),
        Text(
        title,
        style:const TextStyle(
          fontSize: 38,
        ),
        ),
        const Spacer(),
        CustomButton(
          onPressed: onPressed,
          icon:icon,
          )
      ],
    );
  }
}

