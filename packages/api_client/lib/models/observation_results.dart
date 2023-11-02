import 'package:api_client/models/result.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'observation_results.g.dart';

@JsonSerializable()

class ObservationResults extends Equatable {
  const ObservationResults ({required this.totalResults, required this.page, required this.perPage, required this.results,});
  final int totalResults;
  final int page;
  final int perPage;
  final List<Result> results;

  /// Connect the generated [$ObservationResultsFromJson] function to the fromJson
  /// factory.
  factory ObservationResults.fromJson(Map<String, dynamic> json) => _$ObservationResultsFromJson(json);

  /// Connect the generated [$ObservationResultsToJson] function to the toJson method.
  Map<String, dynamic> toJson() => _$ObservationResultsToJson(this);

  @override
  List<Object?> get props => [totalResults, page, perPage, results,];
}