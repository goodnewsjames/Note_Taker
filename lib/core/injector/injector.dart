
import 'package:get_it/get_it.dart';
import 'package:note_taker/core/app_preference_service.dart';
import 'package:note_taker/notes/data/datasources/notes_local_datasource.dart';
import 'package:note_taker/notes/data/repositories/note_repository_impl.dart';
import 'package:note_taker/notes/domain/repositories/note_repository.dart';
import 'package:note_taker/notes/presentation/cubits/note_cubit.dart';

final getItInstance = GetIt.I;

Future init() async {

  getItInstance.registerSingletonAsync<AppPreferenceService>(() async {
    final service = AppPreferenceService();
    await service.init();
    return service;
  });

  getItInstance.registerLazySingleton<NotesLocalDatasource>(
      ()=> NotesLocalDatasourceImpl(appPreferenceService: getItInstance()));
  getItInstance.registerLazySingleton<NoteRepository>(
      ()=> NoteRepositoryImpl(notesLocalDatasource: getItInstance()));
  getItInstance.registerLazySingleton(
      ()=> NoteCubit(noteRepository: getItInstance()));

}