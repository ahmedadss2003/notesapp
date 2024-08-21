import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import 'package:notesapp/widgets/custom_text_form_field.dart';

class EditNewViewBody extends StatelessWidget {
  const EditNewViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomEditView(),
    );
  }
}

class CustomEditView extends StatelessWidget {
  const CustomEditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        
        children: [
          
        CustomAppBar(
            icon: Icons.done,
            title: "Edit Now",
          ),
        const SizedBox(height: 50,),
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
        ],
      ),
    );
  }
}