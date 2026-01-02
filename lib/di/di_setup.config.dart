// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:note_app/data/data_source/note_db_helper.dart' as _i149;
import 'package:note_app/data/repository/mock_title_repository_impl.dart'
    as _i46;
import 'package:note_app/data/repository/note_repository_impl.dart' as _i126;
import 'package:note_app/data/repository/title_repository_impl.dart' as _i537;
import 'package:note_app/di/app_module.dart' as _i445;
import 'package:note_app/domain/repository/note_repository.dart' as _i1024;
import 'package:note_app/domain/repository/title_repository.dart' as _i1043;
import 'package:note_app/domain/use_case/add_note_use_case.dart' as _i20;
import 'package:note_app/domain/use_case/delete_note_use_case.dart' as _i318;
import 'package:note_app/domain/use_case/get_note_use_case.dart' as _i442;
import 'package:note_app/domain/use_case/get_notes_use_case.dart' as _i424;
import 'package:note_app/domain/use_case/update_note_use_case.dart' as _i721;
import 'package:note_app/domain/use_case/use_cases.dart' as _i945;
import 'package:note_app/presentation/add_edit_note/add_edit_note_view_model.dart'
    as _i593;
import 'package:note_app/presentation/notes/notes_view_model.dart' as _i696;
import 'package:sqflite/sqflite.dart' as _i779;

const String _dev = 'dev';
const String _prod = 'prod';

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final appModule = _$AppModule();
    await gh.factoryAsync<_i779.Database>(() => appModule.db, preResolve: true);
    gh.singleton<_i1043.TitleRepository>(
      () => _i46.MockTitleRepositoryImpl(),
      registerFor: {_dev},
    );
    gh.singleton<_i149.NoteDbHelper>(
      () => _i149.NoteDbHelper(gh<_i779.Database>()),
    );
    gh.singleton<_i1043.TitleRepository>(
      () => _i537.TitleRepositoryImpl(),
      registerFor: {_prod},
    );
    gh.singleton<_i1024.NoteRepository>(
      () => _i126.NoteRepositoryImpl(gh<_i149.NoteDbHelper>()),
    );
    gh.singleton<_i20.AddNoteUseCase>(
      () => _i20.AddNoteUseCase(gh<_i1024.NoteRepository>()),
    );
    gh.singleton<_i318.DeleteNoteUseCase>(
      () => _i318.DeleteNoteUseCase(gh<_i1024.NoteRepository>()),
    );
    gh.singleton<_i442.GetNoteUseCase>(
      () => _i442.GetNoteUseCase(gh<_i1024.NoteRepository>()),
    );
    gh.singleton<_i424.GetNotesUseCase>(
      () => _i424.GetNotesUseCase(gh<_i1024.NoteRepository>()),
    );
    gh.factory<_i593.AddEditNoteViewModel>(
      () => _i593.AddEditNoteViewModel(gh<_i1024.NoteRepository>()),
    );
    gh.singleton<_i721.UpdateNoteUseCase>(
      () => _i721.UpdateNoteUseCase(gh<_i1024.NoteRepository>()),
    );
    gh.singleton<_i945.UseCases>(
      () => _i945.UseCases(
        addNote: gh<_i20.AddNoteUseCase>(),
        deleteNote: gh<_i318.DeleteNoteUseCase>(),
        getNote: gh<_i442.GetNoteUseCase>(),
        getNotes: gh<_i424.GetNotesUseCase>(),
        updateNote: gh<_i721.UpdateNoteUseCase>(),
      ),
    );
    gh.factory<_i696.NotesViewModel>(
      () => _i696.NotesViewModel(
        gh<_i945.UseCases>(),
        gh<_i1043.TitleRepository>(),
      ),
    );
    return this;
  }
}

class _$AppModule extends _i445.AppModule {}
