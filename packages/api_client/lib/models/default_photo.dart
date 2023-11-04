import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'default_photo.g.dart';


@JsonSerializable()
class DefaultPhoto extends Equatable {
  const DefaultPhoto({required this.url, required this.squareUrl, required this.mediumUrl});
  final String url;
  final String squareUrl;
  final String mediumUrl;

  /// Connect the generated [$DefaultPhotoFromJson] function to the fromJson
  /// factory.
  factory DefaultPhoto.fromJson(Map<String, dynamic> json) => _$DefaultPhotoFromJson(json);

  /// Connect the generated [$DefaultPhotoToJson] function to the toJTason method.
  Map<String, dynamic> toJson() => _$DefaultPhotoToJson(this);

  @override
  List<Object?> get props => [url, squareUrl, mediumUrl];
}