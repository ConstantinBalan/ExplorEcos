// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taxon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Taxon _$TaxonFromJson(Map<String, dynamic> json) => Taxon(
      name: json['name'] as String?,
      defaultPhoto:
          DefaultPhoto.fromJson(json['default_photo'] as Map<String, dynamic>),
      atlasId: json['atlas_id'] as int?,
      wikipediaUrl: json['wikipedia_url'] as String?,
      iconicTaxonName: json['iconic_taxon_name'] as String,
      preferredCommonName: json['preferred_common_name'] as String?,
    );

Map<String, dynamic> _$TaxonToJson(Taxon instance) => <String, dynamic>{
      'name': instance.name,
      'default_photo': instance.defaultPhoto,
      'atlas_id': instance.atlasId,
      'wikipedia_url': instance.wikipediaUrl,
      'iconic_taxon_name': instance.iconicTaxonName,
      'preferred_common_name': instance.preferredCommonName,
    };
