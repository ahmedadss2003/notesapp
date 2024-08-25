
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/edit_new_view_body.dart';

class NoteItem extends StatefulWidget {
  const NoteItem({super.key ,required this.containerColor, required this.noteModel});
  final Color containerColor ;
  final NoteModel noteModel ;

  @override
  State<NoteItem> createState() => _NoteItemState();
}

class _NoteItemState extends State<NoteItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return EditNewViewBody() ;
        }));
      },
      child: Container(
        padding:const EdgeInsets.only(left: 20,top: 20,bottom: 30),
        width: double.infinity,
        // height: 200,
        decoration: BoxDecoration(
          color: widget.containerColor ,
          borderRadius:const BorderRadius.all(Radius.circular(16)),
        ),
        child: Column(
      
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
            title: Padding(
              padding:  EdgeInsets.only(bottom: 20),
              child:  Text(
                widget.noteModel.title,
                style:const TextStyle(
                  fontSize: 35,
                  color: Colors.black
                ),
              ),
            ),
            subtitle: Text(
              widget.noteModel.content,
              style:const TextStyle(
                fontSize: 19,
                color: Colors.black
              ),
            ),
            trailing: IconButton(
              onPressed: (){
                setState(() {
                widget.noteModel.delete();
                });
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
                widget.noteModel.date,
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
