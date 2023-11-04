// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taxon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Taxon _$TaxonFromJson(Map<String, dynamic> json) => Taxon(
      name: json['name'] as String,
      defaultPhoto:
          DefaultPhoto.fromJson(json['defaultPhoto'] as Map<String, dynamic>),
      atlasId: json['atlasId'] as int,
      wikipediaUrl: json['wikipediaUrl'] as String,
      iconicTaxonName: json['iconicTaxonName'] as String,
      preferredCommonName: json['preferredCommonName'] as String,
    );

Map<String, dynamic> _$TaxonToJson(Taxon instance) => <String, dynamic>{
      'name': instance.name,
      'defaultPhoto': instance.defaultPhoto,
      'atlasId': instance.atlasId,
      'wikipediaUrl': instance.wikipediaUrl,
      'iconicTaxonName': instance.iconicTaxonName,
      'preferredCommonName': instance.preferredCommonName,
    };
