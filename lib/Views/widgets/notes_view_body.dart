import 'package:flutter/material.dart';
import 'package:notesapp/Views/widgets/custom_app_bar.dart';
import 'package:notesapp/Views/widgets/custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.all(20.0),
      child:  Column(
        children: [
          CustomAppBar(),
          NoteItem(),
        ],
      ),
    );
  }
}