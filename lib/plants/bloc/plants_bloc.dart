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
    on<PlantsRequested>(_locationRequestedPermission);
  }

  final iNaturalistRepository _inaturalistRepository;
  Future<void> _plantListRequested(
    PlantsRequested event,
    Emitter<PlantsState> emit,
  ) async {
    emit(const PlantsLoading());
    try {
      final userLocation = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      final plantList = await _inaturalistRepository.getPlants(
        latitude: userLocation.latitude,
        longitude: userLocation.longitude,
        radius: 25,
      );
      emit(PlantsLoadSuccess(plantList));
    } catch (e) {
      emit(PlantsLoadFailure());
    }
  }

  Future<void> _locationRequestedPermission(
    PlantsRequested event,
    Emitter<PlantsState> emit,
  ) async {
    LocationPermission permission = await Geolocator.requestPermission();
  }
}
