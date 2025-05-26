import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_taker/core/app_theme.dart';
import 'package:note_taker/core/injector/injector.dart' as injector;
import 'package:note_taker/core/injector/injector.dart';
import 'package:note_taker/notes/presentation/cubits/note_cubit.dart';
import 'package:note_taker/notes/presentation/pages/add_note_page.dart';
import 'package:note_taker/notes/presentation/pages/note_list_page.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await injector.init();

  runApp(
      BlocProvider(
          create: (context) => getItInstance<NoteCubit>(),
          child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notes Taker',
      theme: AppTheme.darkTheme,
      home: NoteListPage(),
      routes: {
        NoteListPage.routeName: (context) => const NoteListPage(),
        AddNotePage.routeName: (context) => const AddNotePage(),
      },
    );
  }
}
