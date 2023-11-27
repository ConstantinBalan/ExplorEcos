import 'package:api_client/models/default_photo.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'taxon.g.dart';

@JsonSerializable()
class Taxon extends Equatable {
  const Taxon(
      {required this.name,
      required this.defaultPhoto,
      required this.atlasId,
      required this.wikipediaUrl,
      required this.iconicTaxonName,
      required this.preferredCommonName});
  final String? name;
  @JsonKey(name: 'default_photo')
  final DefaultPhoto defaultPhoto;
  @JsonKey(name: 'atlas_id')
  final int? atlasId;
  @JsonKey(name: 'wikipedia_url')
  final String? wikipediaUrl;
  @JsonKey(name: 'iconic_taxon_name')
  final String iconicTaxonName;
  @JsonKey(name: 'preferred_common_name')
  final String preferredCommonName;

  /// Connect the generated [$TaxonFromJson] function to the fromJson
  /// factory.
  factory Taxon.fromJson(Map<String, dynamic> json) => _$TaxonFromJson(json);

  /// Connect the generated [$TaxonToJson] function to the toJson method.
  Map<String, dynamic> toJson() => _$TaxonToJson(this);

  @override
  List<Object?> get props => [
        name,
        defaultPhoto,
        atlasId,
        wikipediaUrl,
        iconicTaxonName,
        preferredCommonName
      ];
}
