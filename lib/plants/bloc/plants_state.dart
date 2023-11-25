part of 'plants_bloc.dart';

sealed class PlantsState extends Equatable {
  const PlantsState();

  @override
  List<Object> get props => [];
}

final class PlantsInitial extends PlantsState {
  const PlantsInitial();
}

//Plants stuff below
final class PlantsLoading extends PlantsState {
  const PlantsLoading();
}

final class PlantsLoadSuccess extends PlantsState {
  //Call here the successful build UI class or element or whatever they're called
  const PlantsLoadSuccess(this.plantList);

  final ObservationResults plantList;
}

final class PlantsLoadFailure extends PlantsState {}

//Animals stuff below
final class AnimalsLoading extends PlantsState {
  const AnimalsLoading();
}

final class AnimalsLoadSuccess extends PlantsState {
  const AnimalsLoadSuccess(this.animalList);

  final ObservationResults animalList;
}

final class AnimalsLoadFailure extends PlantsState {}
