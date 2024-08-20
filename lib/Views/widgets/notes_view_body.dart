import 'package:flutter/material.dart';
import 'package:notesapp/Views/widgets/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15),
      child: const Column(
        children: [
          CustomAppBar(),
        ],
      ),
    );
  }
}

