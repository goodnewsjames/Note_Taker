import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_taker/notes/domain/entities/note_entity.dart';
import 'package:note_taker/notes/domain/repositories/note_repository.dart';
import 'package:uuid/uuid.dart';
part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  final NoteRepository noteRepository;
  NoteCubit({required this.noteRepository}) : super(NoteInitial());

  Future<void> addNote({required String title, required String content}) async{
    if (title.isEmpty || content.isEmpty) {
      emit(AddNoteErrorState(message: "Title and content cannot be empty"));
      return;
    }
    final note = NoteEntity(
      id: Uuid().v4(),
      title: title,
      content: content,
      createdAt: DateTime.now().toIso8601String(),
    );
    try{
      await noteRepository.createNote(note: note);
      await fetchNotes();
    }catch(e){
      emit(AddNoteErrorState(message: "Failed to add note: $e"));
      return;
    }
  }

  Future<void> fetchNotes() async{
    try{
      final notes = await noteRepository.fetchNotes();
      print("Fetched notes: ${notes.length}");
    }catch(e){
      //emit(NoteFetchErrorState(message: "Failed to fetch notes: $e"));
      print("Failed to fetch notes: $e");
      return;
    }
  }
}