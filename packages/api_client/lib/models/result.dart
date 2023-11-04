import 'package:api_client/models/taxon.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'result.g.dart';

@JsonSerializable()
class Result extends Equatable {
  const Result({required this.qualityGrade, required this.speciesGuess, required this.taxon, required this.communityTaxonId});
  final String qualityGrade;
  final String speciesGuess;
  final Taxon taxon;
  final int communityTaxonId;

   /// Connect the generated [$ResultFromJson] function to the fromJson
  /// factory.
  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  /// Connect the generated [$ResultToJson] function to the toJson method.
  Map<String, dynamic> toJson() => _$ResultToJson(this);


  @override
  List<Object?> get props => [qualityGrade, speciesGuess, taxon, communityTaxonId];
}