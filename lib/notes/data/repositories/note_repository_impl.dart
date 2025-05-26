
import 'package:note_taker/notes/data/datasources/notes_local_datasource.dart';
import 'package:note_taker/notes/data/models/note_model.dart';
import 'package:note_taker/notes/domain/entities/note_entity.dart';
import 'package:note_taker/notes/domain/repositories/note_repository.dart';

class NoteRepositoryImpl implements NoteRepository {
  final NotesLocalDatasource notesLocalDatasource;
  NoteRepositoryImpl({required this.notesLocalDatasource});

  @override
  Future<List<NoteEntity>> fetchNotes() async {
    try{
      return await notesLocalDatasource.fetchNotes() ?? [];
    }catch(e){
      // Handle exceptions or errors here
      throw Exception("Failed to fetch notes: $e");
    }
  }

  @override
  Future<void> createNote({required NoteEntity note}) async {
    try{
      final noteModel = NoteModel(
          id: note.id,
          title: note.title, content: note.content, createdAt: note.createdAt);
      await notesLocalDatasource.createNote(note: noteModel);
    }catch(e){
      // Handle exceptions or errors here
      throw Exception("Failed to create note: $e");
    }

  }
}