import 'package:api_client/models/observation_results.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:inaturalist_repository/inaturalist_repository.dart';

part 'plants_event.dart';
part 'plants_state.dart';

class PlantsBloc extends Bloc<PlantsEvent, PlantsState> {
  // ignore: lines_longer_than_80_chars
  PlantsBloc({required iNaturalistRepository inaturalistRepository}) : _inaturalistRepository = inaturalistRepository,
    super(PlantsInitial()) {
      on<PlantsRequested>(_plantListRequested);
      on<LocationRequested>(_userLocationRequested);
    }
    final iNaturalistRepository _inaturalistRepository;
    Future<void> _plantListRequested(
      PlantsRequested event,
      Emitter<PlantsState> emit,
    ) async {
      try {
        final plantList = await _inaturalistRepository.getPlants(
          latitude: event.lat,
          longitude: event.long,
          radius: event.radius,
          );
          emit(PlantsLoadSuccess(plantList));
      } catch (e) {
        emit(PlantsLoadFailure());
      }
    }

    Future<void> _userLocationRequested(
      LocationRequested event,
      Emitter<PlantsState> emit,
    ) async {
      try {
          // ignore: lines_longer_than_80_chars
          final userLocation = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
          emit(UserLocationLoadSuccess(userLocation));
        } catch (e) {
          emit(UserLocationLoadFailure());
        }
      }
    
}

