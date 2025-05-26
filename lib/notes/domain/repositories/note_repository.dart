
import 'package:note_taker/notes/domain/entities/note_entity.dart';

abstract class NoteRepository {
  Future<List<NoteEntity>> fetchNotes();
  Future<void> createNote({required NoteEntity note});
}