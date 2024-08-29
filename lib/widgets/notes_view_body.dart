import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import 'package:notesapp/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(vertical: 40 ,horizontal: 20),
      child:  Column(
        children: [
          CustomAppBar(
            title: "Notes",
            icon: FontAwesomeIcons.magnifyingGlass,
          ),
          Expanded(child: NotesListView())
        ],
      ),
    );
  }
}

