// ignore_for_file: lines_longer_than_80_chars

import 'package:api_client/models/observation_results.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:inaturalist_repository/inaturalist_repository.dart';

part 'nature_event.dart';
part 'nature_state.dart';

class NatureBloc extends Bloc<NatureEvent, NatureState> {
  NatureBloc({required iNaturalistRepository inaturalistRepository})
      : _inaturalistRepository = inaturalistRepository,
        super(const NatureInitial()) {
    on<PlantsRequested>(_plantListRequested);
    on<AnimalsRequested>(_animalListRequested);
  }

  final iNaturalistRepository _inaturalistRepository;
  Future<void> _plantListRequested(
    PlantsRequested event,
    Emitter<NatureState> emit,
  ) async {
    emit(const NatureLoading());
    try {
      final natureList = await _inaturalistRepository.getPlants(
        latitude: event.latitude,
        longitude: event.longitude,
        radius: 50,
      );
      emit(NatureLoadSuccess(natureList));
    } catch (e) {
      emit(NatureLoadFailure());
    }
  }

  Future<void> _animalListRequested(
    AnimalsRequested event,
    Emitter<NatureState> emit,
  ) async {
    emit(const NatureLoading());
    try {
      final natureList = await _inaturalistRepository.getAnimals(
        latitude: event.latitude,
        longitude: event.longitude,
        radius: 50,
      );
      emit(NatureLoadSuccess(natureList));
    } catch (e) {
      emit(NatureLoadFailure());
    }
  }
}
