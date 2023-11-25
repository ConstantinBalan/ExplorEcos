// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      qualityGrade: json['quality_grade'] as String,
      speciesGuess: json['species_guess'] as String,
      taxon: Taxon.fromJson(json['taxon'] as Map<String, dynamic>),
      communityTaxonId: json['community_taxon_id'] as int,
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'quality_grade': instance.qualityGrade,
      'species_guess': instance.speciesGuess,
      'taxon': instance.taxon,
      'community_taxon_id': instance.communityTaxonId,
    };
