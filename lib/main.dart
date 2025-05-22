import 'package:flutter/material.dart';
import 'package:note_taker/core/app_theme.dart';
import 'package:note_taker/notes/presentation/pages/note_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notes Taker',
      theme: AppTheme.lightTheme,
      home: NoteListPage(),
    );
  }
}
