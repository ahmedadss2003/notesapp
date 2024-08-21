import 'package:flutter/material.dart';
import 'package:notesapp/Views/widgets/custom_note_item.dart';

List<MaterialColor>colors =[
  
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
    return ListView.builder(
      itemCount: 7,
      itemBuilder:(context , index){
        return  Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: NoteItem(
            containerColor:colors[index] ,
          ),
        );
      }
    );
  }
}