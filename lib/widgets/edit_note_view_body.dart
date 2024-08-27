import 'package:flutter/material.dart';
import 'package:notesapp/Views/edit_note_view.dart';
import 'package:notesapp/models/note_model.dart';

class EditNewViewBody extends StatelessWidget {
  const EditNewViewBody({super.key, required this.noteModel});
  final NoteModel noteModel ;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomEditViewBody(
        noteModel: noteModel,
      ),
    );
  }
}

