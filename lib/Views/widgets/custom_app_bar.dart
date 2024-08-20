import 'package:flutter/material.dart';
import 'package:notesapp/Views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(height: 60,),
        Text(
          "Notes",
        style: TextStyle(
          fontSize: 28,
        ),
        ),
        Spacer(),
        CustomSearchIcon()
      ],
    );
  }
}

