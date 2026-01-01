import 'package:injectable/injectable.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/repository/note_repository.dart';

@singleton
class DeleteNoteUseCase {
  final NoteRepository _repository;

  DeleteNoteUseCase(this._repository);

  Future<void> call(Note note) async {
    await _repository.deleteNote(note);
  }
}
