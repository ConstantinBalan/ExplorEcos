// ignore_for_file: lines_longer_than_80_chars

import 'package:api_client/models/observation_results.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:inaturalist_repository/inaturalist_repository.dart';

part 'plants_event.dart';
part 'plants_state.dart';

class PlantsBloc extends Bloc<PlantsEvent, PlantsState> {
  PlantsBloc({required iNaturalistRepository inaturalistRepository})
      : _inaturalistRepository = inaturalistRepository,
        super(const PlantsInitial()) {
    on<PlantsRequested>(_plantListRequested);
    on<AnimalsRequested>(_animalListRequested);
  }

  final iNaturalistRepository _inaturalistRepository;
  Future<void> _plantListRequested(
    PlantsRequested event,
    Emitter<PlantsState> emit,
  ) async {
    emit(const PlantsLoading());
    try {
      final plantList = await _inaturalistRepository.getPlants(
        latitude: event.latitude,
        longitude: event.longitude,
        radius: 50,
      );
      emit(PlantsLoadSuccess(plantList));
    } catch (e) {
      emit(PlantsLoadFailure());
    }
  }

  Future<void> _animalListRequested(
    AnimalsRequested event,
    Emitter<PlantsState> emit,
  ) async {
    emit(const AnimalsLoading());
    try {
      final animalList = await _inaturalistRepository.getAnimals(
        latitude: event.latitude,
        longitude: event.longitude,
        radius: 50,
      );
      emit(AnimalsLoadSuccess(animalList));
    } catch (e) {
      emit(AnimalsLoadFailure());
    }
  }
}
