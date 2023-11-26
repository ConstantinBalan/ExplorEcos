part of 'nature_bloc.dart';

sealed class NatureEvent extends Equatable {
  const NatureEvent();

  @override
  List<Object> get props => [];
}

class PlantsRequested extends NatureEvent {
  const PlantsRequested(this.latitude, this.longitude);

  final double latitude;
  final double longitude;
}

class AnimalsRequested extends NatureEvent {
  const AnimalsRequested(this.latitude, this.longitude);

  final double latitude;
  final double longitude;
}
