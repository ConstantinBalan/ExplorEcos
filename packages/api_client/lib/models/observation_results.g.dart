// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'observation_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ObservationResults _$ObservationResultsFromJson(Map<String, dynamic> json) =>
    ObservationResults(
      totalResults: json['total_results'] as int,
      page: json['page'] as int,
      perPage: json['per_page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ObservationResultsToJson(ObservationResults instance) =>
    <String, dynamic>{
      'total_results': instance.totalResults,
      'page': instance.page,
      'per_page': instance.perPage,
      'results': instance.results,
    };
