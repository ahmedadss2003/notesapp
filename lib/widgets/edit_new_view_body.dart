import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';

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
          // SizedBox(height: 50,),
          CustomAppBar(
            icon: Icons.done,
            title: "Edit Now",
          )
      
        ],
      ),
    );
  }
}