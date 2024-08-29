import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import 'package:notesapp/widgets/custom_text_form_field.dart';

class CustomEditViewBody extends StatefulWidget {
  const CustomEditViewBody({super.key, required this.noteModel});
  final NoteModel noteModel ;

  @override
  State<CustomEditViewBody> createState() => _CustomEditViewBodyState();
}

class _CustomEditViewBodyState extends State<CustomEditViewBody> {
  TextEditingController? titleController;
  TextEditingController? contentController;
   String? title , content ;
   @override
  void initState() {
    super.initState();
    titleController = TextEditingController(text: widget.noteModel.title);
    contentController = TextEditingController(text: widget.noteModel.content);
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 40),
      child: Column(
        
        children: [
          
        CustomAppBar(
            onPressed: (){
              widget.noteModel.title=title ??widget.noteModel.title;
              widget.noteModel.content = content ??widget.noteModel.content;
              widget.noteModel.save() ;
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            icon: Icons.done,
            title: "Edit Now",
          ),
        const SizedBox(height: 50,),
         CustomTextField(
          controller: titleController,
          onChanged: (value){
            title = value ;
          },
          hint: "Tittle",
          horizontalPadding: 20,
          verticalPadding: 30,
        ),
         const SizedBox(height: 30,),
          CustomTextField(
          controller: contentController,
          onChanged: (value){
            content = value ;
          },
          hint: "Content",
          horizontalPadding: 20,
          verticalPadding: 60,
        ),
        ],
      ),
    );
  }
}