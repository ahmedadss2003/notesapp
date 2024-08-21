import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_button.dart';
import 'package:notesapp/widgets/custom_text_form_field.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        
        children: [
        CustomTextField(
          hint: "Tittle",
          horizontalPadding: 20,
          verticalPadding: 30,
        ),
         const SizedBox(height: 30,),
        CustomTextField(
          hint: "Content",
          horizontalPadding: 20,
          verticalPadding: 60,
        ),
        const SizedBox(height: 50,),
        CustomButton(text: "Add")
        ],
      ),
    );
  }
}

