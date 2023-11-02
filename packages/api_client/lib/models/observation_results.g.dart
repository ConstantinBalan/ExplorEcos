// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'observation_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ObservationResults _$ObservationResultsFromJson(Map<String, dynamic> json) =>
    ObservationResults(
      totalResults: json['totalResults'] as int,
      page: json['page'] as int,
      perPage: json['perPage'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ObservationResultsToJson(ObservationResults instance) =>
    <String, dynamic>{
      'totalResults': instance.totalResults,
      'page': instance.page,
      'perPage': instance.perPage,
      'results': instance.results,
    };
