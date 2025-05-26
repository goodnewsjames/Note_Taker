import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_taker/notes/presentation/cubits/note_cubit.dart';

class AddNotePage extends StatefulWidget {
  const AddNotePage({super.key});
  static const String routeName = '/addNotePage';

  @override
  State<AddNotePage> createState() => _AddNotePageState();
}

class _AddNotePageState extends State<AddNotePage> {

  final titleController = TextEditingController();
  final contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text("Add Note"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: titleController,
              onChanged: (value){},
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Title',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              maxLines: 10,
              controller: contentController,
              onChanged: (value){

              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Content',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Logic to save the note
              context.read<NoteCubit>().addNote(
                  title: titleController.text,
                  content: contentController.text);
              //context.read<NoteCubit>().fetchNotes();
            },
            child: Text('Save Note'),
          ),
        ],
      ),
    );
  }

  @override
  dispose() {
    titleController.dispose();
    contentController.dispose();
    super.dispose();
  }
}
