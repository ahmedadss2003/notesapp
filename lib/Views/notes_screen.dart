import 'package:flutter/material.dart';
import 'package:notesapp/Views/widgets/add_note_bottom_sheet.dart';
import 'package:notesapp/Views/widgets/notes_list_view.dart';
import 'package:notesapp/Views/widgets/notes_view_body.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
           
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ),
            context: context,
             builder:(context){
             return const AddNote() ; 
             
             }
          );
        },
        shape:const CircleBorder(),
        child:const Icon(
          Icons.add,

          ),
        ),
    );
  }
}

