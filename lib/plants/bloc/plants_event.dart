part of 'plants_bloc.dart';

sealed class PlantsEvent extends Equatable {
  const PlantsEvent();

  @override
  List<Object> get props => [];
}

class PlantsRequested extends PlantsEvent {
  const PlantsRequested(this.latitude, this.longitude);

  final double latitude;
  final double longitude;
}

class AnimalsRequested extends PlantsEvent {
  const AnimalsRequested(this.latitude, this.longitude);

  final double latitude;
  final double longitude;
}
