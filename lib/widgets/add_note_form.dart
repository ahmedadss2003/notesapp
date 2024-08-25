import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notesapp/cubits/add_note/add_note_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/custom_button.dart';
import 'package:notesapp/widgets/custom_text_form_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  @override
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode
      .disabled; // this is to check validate auto example=>use if user enter not validate input
  String? title, subtitle;
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode:
          autovalidateMode, // this i need change if there was a problrm so i change to statfull
      child: Column(
        children: [
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: "Tittle",
            horizontalPadding: 20,
            verticalPadding: 20,
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextField(
            onSaved: (value) {
              subtitle = value;
            },
            hint: "Content",
            horizontalPadding: 20,
            verticalPadding: 50,
          ),
          const SizedBox(
            height: 50,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(

            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true:false,
                text: "Add",
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    DateTime now = DateTime.now();
                    String formattedDate = DateFormat('dd-MM-yyyy').format(now);
                    formKey.currentState!.save();
                    NoteModel noteModel = NoteModel(
                        title: title!, 
                        content: subtitle!,
                        date: formattedDate,
                        color: Colors.red.value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              );
            },
          )
        ],
      ),
    );
  }
}
