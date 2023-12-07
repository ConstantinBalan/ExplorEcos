part of 'wiki_bloc.dart';

sealed class WikiEvent extends Equatable {
  const WikiEvent();

  @override
  List<Object> get props => [];
}

class WikiRequested extends WikiEvent {
  const WikiRequested(this.result);

  final Result result;
}
