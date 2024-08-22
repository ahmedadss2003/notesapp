import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/Views/notes_screen.dart';
import 'package:notesapp/constant/constants.dart';

void main() async{
  await Hive.initFlutter();
  Hive.openBox(kNOteBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",
        brightness: Brightness.dark,
      ),
      home:const NotesScreen(),
    );
  }
}