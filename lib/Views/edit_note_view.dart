import 'package:flutter/material.dart';
import 'package:notesapp/widgets/edit_new_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:EditNewViewBody() ,
    );
  }
}