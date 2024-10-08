import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_note/add_note_cubit.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/widgets/add_note_form.dart';

class AddNotebottomSheet extends StatelessWidget {
  const AddNotebottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Container(
          padding: const EdgeInsets.all(10),
          child: BlocConsumer<AddNoteCubit, AddNoteState>(//here i can use bloclistner only but Becuse use AbsorbPointer i will use blocconsumer
            listener: (context, state) {
              if(state is AddNoteFailure){
                print("please Add Note Again");
              }
              if(state is AddNoteSuccess){
                context.read<NotesCubit>().fetchAllNotes();
                Navigator.pop(context);
              }
            }, 
            builder: (context, state) { 
              return  AbsorbPointer(//make user can't enter any data during click on add note bottom
                absorbing: state is AddNoteLoading? true :false,
                child:const AddNoteForm()
                );
            },
          ),
        ),
    );
  }
}
