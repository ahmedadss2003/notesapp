import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
 List<NoteModel>? notes ;
  fetchAllNotes(){
    // here i don,t need to add async and not need add try,catch and use NoteFailure => this is local DB 
     
      var notesBox = Hive.box<NoteModel>(kNOteBox);
      // Now i need read the data from Hive 
      notes =notesBox.values.toList() ;
      
  } 
}
