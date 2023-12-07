part of 'wiki_bloc.dart';

sealed class WikiState extends Equatable {
  const WikiState();

  @override
  List<Object> get props => [];
}

final class WikiInitial extends WikiState {
  const WikiInitial();
}

//Plants stuff below
final class WikiLoading extends WikiState {
  const WikiLoading();
}

final class WikiLoadSuccess extends WikiState {
  //Call here the successful build UI class or element or whatever they're called
  const WikiLoadSuccess(this.wikiInfo);

  final String wikiInfo;
}

final class WikiLoadFailure extends WikiState {
  const WikiLoadFailure();
}
