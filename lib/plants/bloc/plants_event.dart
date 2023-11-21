part of 'plants_bloc.dart';

sealed class PlantsEvent extends Equatable {
  const PlantsEvent();

  @override
  List<Object> get props => [];
}

class PlantsRequested extends PlantsEvent {
  const PlantsRequested();
}

class LocationRequested extends PlantsEvent {
  const LocationRequested(this.location);

  final Position location;
}
