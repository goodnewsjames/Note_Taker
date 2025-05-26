part of 'note_cubit.dart';

sealed class NoteState extends Equatable{
  const NoteState();
  @override
  List<Object?> get props => [];
}

final class NoteInitial extends NoteState {
  const NoteInitial();
}

final class AddNoteErrorState extends NoteState {
  const AddNoteErrorState({required this.message});
  final String message;
  @override
  List<Object?> get props => [message];
}
