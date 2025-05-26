
import 'package:note_taker/core/app_preference_service.dart';
import 'package:note_taker/core/security_constant.dart';
import 'package:note_taker/notes/data/models/note_model.dart';

abstract class NotesLocalDatasource {
  Future<List<NoteModel>?> fetchNotes();
  Future<void> createNote({required NoteModel note});
}

class NotesLocalDatasourceImpl implements NotesLocalDatasource {
  NotesLocalDatasourceImpl({required this.appPreferenceService});
  final AppPreferenceService appPreferenceService;

  @override
  Future<void> createNote({required NoteModel note}) async{
    final currentNotes = appPreferenceService.getValue<List<String>>(
        SecurityConstant.kNotesKey) ?? [];
    currentNotes.add(NoteModel.serialize(note));
    print("$currentNotes");
    await appPreferenceService.saveValue(
        SecurityConstant.kNotesKey, currentNotes);
  }

  @override
  Future<List<NoteModel>?> fetchNotes() async{
    final noteList = appPreferenceService.getValue<List<String>>(
        SecurityConstant.kNotesKey);
    print("$noteList");
    return noteList?.map((note) => NoteModel.deserialize(note)).toList();
  }

}
