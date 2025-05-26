import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:note_taker/notes/domain/entities/note_entity.dart';

class NoteModel extends NoteEntity with EquatableMixin {
  NoteModel({
      required super.id,
      required super.title,
      required super.content,
      required super.createdAt});

  static Map<String, dynamic> toMap(NoteModel note) {
    return {
      'id': note.id,
      'title': note.title,
      'content': note.content,
      'createdAt': note.createdAt,
    };
  }

  static NoteModel fromMap(Map<String, dynamic> map) {
    return NoteModel(
      id: map['id'],
      title: map['title'],
      content: map['content'],
      createdAt: map['createdAt'],
    );
  }

  static String serialize(NoteModel note) {
    return json.encode(NoteModel.toMap(note));
  }

  static NoteModel deserialize(String jsonString) {
    return NoteModel.fromMap(json.decode(jsonString));
  }

  @override
  List<Object?> get props => [
    id,
    title,
    content,
    createdAt,
  ];
}
