
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/edit_note_view_body.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key , required this.noteModel});
  
  final NoteModel noteModel ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return EditNewViewBody(
            noteModel: noteModel,
          ) ;
        }));
      },
      child: Container(
        padding:const EdgeInsets.only(left: 20,top: 20,bottom: 30),
        width: double.infinity,
        // height: 200,
        decoration:const BoxDecoration(
          
          color: Color.fromARGB(255, 7, 133, 172) ,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Column(
      
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
            title: Padding(
              padding:const  EdgeInsets.only(bottom: 20),
              child:  Text(
                noteModel.title,
                style:const TextStyle(
                  fontSize: 35,
                  color: Colors.black
                ),
              ),
            ),
            subtitle: Text(
              noteModel.content,
              style:const TextStyle(
                fontSize: 19,
                color: Colors.black
              ),
            ),
            trailing: IconButton(
              onPressed: (){
                noteModel.delete();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              },
              icon:const Icon(
              
              FontAwesomeIcons.trash,
              color: Colors.black,
              size: 25  ,
            ),) 
                ),
             Padding(
              padding:  EdgeInsets.only(right: 35,top: 30),
              child:  Text(
                noteModel.date,
                style: TextStyle(
                  fontSize: 16
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
