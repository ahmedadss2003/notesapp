part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}
final class Notesloading extends NotesState {}
final class NotesSuccess extends NotesState {
 final List<NoteModel>notemodel  ;

  NotesSuccess({required this.notemodel});
}
final class NotesFailure extends NotesState {
  final String errMessage ;

  NotesFailure({required this.errMessage});
}