import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

//  addNote(NoteModel note) async{
//   emit(AddNoteLoading()) ;
//   try {
//   var notesBox = Hive.box(kNOteBox) ;
//   emit(AddNoteSuccess());
//   await notesBox.add(note);//add accept dynamic value so accept (note) but if note register notemodel not accept note ;
// } catch (e) {
//   emit(AddNoteFailure(errMessage: e.toString()));
// }

//  }

  addNote(NoteModel note)async{
  emit(AddNoteLoading()) ;
  try{
  var notesBox =Hive.box<NoteModel>(kNOteBox);//This method is used to open an existing Hive box
  await notesBox.add(note);
  emit(AddNoteSuccess()) ;
  }catch(e) {
  emit(AddNoteFailure(errMessage: e.toString()));
  }

}
}
//Genetric method is very important if need use method with the diffrent type;
/*
 add<T>(T name){
  return name ;
 } 
*/