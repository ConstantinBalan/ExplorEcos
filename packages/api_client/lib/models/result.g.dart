// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      qualityGrade: json['qualityGrade'] as String,
      speciesGuess: json['speciesGuess'] as String,
      taxon: Taxon.fromJson(json['taxon'] as Map<String, dynamic>),
      communityTaxonId: json['communityTaxonId'] as int,
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'qualityGrade': instance.qualityGrade,
      'speciesGuess': instance.speciesGuess,
      'taxon': instance.taxon,
      'communityTaxonId': instance.communityTaxonId,
    };
