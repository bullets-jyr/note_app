import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/repository/note_repository.dart';

class GetNoteUseCase {
  final NoteRepository _repository;

  GetNoteUseCase(this._repository);

  Future<Note?> call(int id) async {
    return await _repository.getNoteById(id);
  }
}
