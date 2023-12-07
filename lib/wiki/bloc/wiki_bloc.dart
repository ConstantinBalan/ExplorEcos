import 'package:api_client/models/observation_results.dart';
import 'package:api_client/models/result.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:inaturalist_repository/inaturalist_repository.dart';
part 'wiki_event.dart';
part 'wiki_state.dart';

class WikiBloc extends Bloc<WikiEvent, WikiState> {
  WikiBloc({required iNaturalistRepository inaturalistRepository})
      : _inaturalistRepository = inaturalistRepository,
        super(const WikiInitial()) {
    on<WikiRequested>(_wikiInfoRequested);
  }

  final iNaturalistRepository _inaturalistRepository;
  Future<void> _wikiInfoRequested(
    WikiRequested event,
    Emitter<WikiState> emit,
  ) async {
    emit(const WikiLoading());
    try {
      final wikiInfo =
          await _inaturalistRepository.getWiki(result: event.result);
      emit(WikiLoadSuccess(wikiInfo));
    } catch (e) {
      emit(const WikiLoadFailure());
    }
  }
}
