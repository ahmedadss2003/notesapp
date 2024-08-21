import 'package:flutter/material.dart';
import 'package:notesapp/Views/widgets/notes_view_body.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        shape:const CircleBorder(),
        child:const Icon(
          Icons.add,
          
          ),
        ),
    );
  }
}

