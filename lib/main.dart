import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/Views/notes_screen.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/cubits/add_note/add_note_cubit.dart';
import 'package:notesapp/models/note_model.dart';

void main() async{
  await Hive.initFlutter();
  Hive.openBox(kNOteBox);

  Hive.registerAdapter(
    NoteModelAdapter(), //U tell Hive this is type need to register it
  );
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "Poppins",
          brightness: Brightness.dark,
        ),
        home:const NotesScreen(),
      ),
    );
  }
}