import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/widgets/add_note_bottom_sheet.dart';
import 'package:notesapp/widgets/notes_list_view.dart';
import 'package:notesapp/widgets/notes_view_body.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),// note if use BlocProvider here or in material app not effect Becuse the notes disply while app run 
      child: Scaffold(
        body: const NotesViewBody(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)),
                context: context,
                builder: (context) {
                  return const AddNotebottomSheet();
                });
          },
          shape: const CircleBorder(),
          child: const Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }
}
