import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'photo.g.dart';

@JsonSerializable()
class Photo extends Equatable{
  const Photo({required this.id, required this.attibution, required this.licenseCode, required this.url});
  final int id;
  final String attibution;
  final String licenseCode;
  final String url;

  /// Connect the generated [$PhotoFromJson] function to the fromJson
  /// factory.
  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);

  /// Connect the generated [$PhotoToJson] function to the toJson method.
  Map<String, dynamic> toJson() => _$PhotoToJson(this);

  @override
  List<Object?> get props => [id, attibution, licenseCode, url];
}