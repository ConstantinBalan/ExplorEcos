part of 'plants_bloc.dart';

sealed class PlantsEvent extends Equatable {
  const PlantsEvent();

  @override
  List<Object> get props => [];
}

class PlantsRequested extends PlantsEvent {
  const PlantsRequested(this.lat, this.long, this.radius);

  final double lat;
  final double long;
  final double radius;
}

class LocationRequested extends PlantsEvent {
  const LocationRequested(this.location);

  final Position location;
}