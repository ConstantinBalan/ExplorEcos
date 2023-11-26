part of 'nature_bloc.dart';

sealed class NatureState extends Equatable {
  const NatureState();

  @override
  List<Object> get props => [];
}

final class NatureInitial extends NatureState {
  const NatureInitial();
}

//Plants stuff below
final class NatureLoading extends NatureState {
  const NatureLoading();
}

final class NatureLoadSuccess extends NatureState {
  //Call here the successful build UI class or element or whatever they're called
  const NatureLoadSuccess(this.natureList);

  final ObservationResults natureList;
}

final class NatureLoadFailure extends NatureState {
  const NatureLoadFailure();
}
