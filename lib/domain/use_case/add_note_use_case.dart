import 'package:injectable/injectable.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/repository/note_repository.dart';

@singleton
class AddNoteUseCase {
  final NoteRepository _repository;

  AddNoteUseCase(this._repository);

  Future<void> call(Note note) async {
    await _repository.insertNote(note);
  }
}
