
import 'package:flutter/material.dart';
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
  final GlobalKey<FormState> formKey =GlobalKey() ;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;// this is to check validate auto example=>use if user enter not validate input
  String? title  , subtitle ;
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode, // this i need change if there was a problrm so i change to statfull 
      child: Column(
        
        children: [
        CustomTextField(
          onSaved: (value){
            title = value ;
          },
          hint: "Tittle",
          horizontalPadding: 20,
          verticalPadding: 30,
        ),
         const SizedBox(height: 30,),
        CustomTextField(
          onSaved: (value){
            subtitle = value ;
          },
          hint: "Content",
          horizontalPadding: 20,
          verticalPadding: 60,
        ),
        const SizedBox(height: 50,),
        CustomButton(
          text: "Add",
          onPressed: (){
            if(formKey.currentState!.validate()){
              formKey.currentState!.save();
            }else{
              setState(() {
              autovalidateMode = AutovalidateMode.always ;      
              });
            }
          },
        )
        ],
      ),
    );
  }
}

