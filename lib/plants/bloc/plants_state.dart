part of 'plants_bloc.dart';

sealed class PlantsState extends Equatable {
  const PlantsState();

  @override
  List<Object> get props => [];
}

final class PlantsInitial extends PlantsState {}

final class PlantsLoadSuccess extends PlantsState {
  //Call here the successful build UI class or element or whatever they're called
  const PlantsLoadSuccess(this.plantList);

  final ObservationResults plantList;
}

final class PlantsLoadFailure extends PlantsState {}

final class UserLocationLoadSuccess extends PlantsState{
  const UserLocationLoadSuccess(this.location);

  final Position location;
}

final class UserLocationLoadFailure extends PlantsState{}