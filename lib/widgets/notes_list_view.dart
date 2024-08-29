import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/custom_note_item.dart';

List<MaterialColor> colors = [
  Colors.red,
  Colors.blue,
  Colors.green,
  Colors.green,
  Colors.green,
  Colors.green,
  Colors.green,
];

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes =BlocProvider.of<NotesCubit>(context).fetchAllNotes()?? []  ;
        return ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:const EdgeInsets.only(bottom: 20),
                child: NoteItem(
                  noteModel: notes[index],
                  
                ),
              );
            });
      },
    );
  }
}
