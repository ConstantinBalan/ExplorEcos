import 'package:api_client/models/photo.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'result.g.dart';

@JsonSerializable()
class Result extends Equatable {
  const Result({required this.id, required this.cachedVotesTotal, required this.captive, required this.photos, required this.qualityGrade,});
  final int id;
  final int cachedVotesTotal;
  final bool captive;
  final List<Photo> photos;
  final String qualityGrade;

   /// Connect the generated [$ResultFromJson] function to the fromJson
  /// factory.
  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  /// Connect the generated [$ResultToJson] function to the toJson method.
  Map<String, dynamic> toJson() => _$ResultToJson(this);


  @override
  List<Object?> get props => [id, cachedVotesTotal, captive, photos, qualityGrade];
}