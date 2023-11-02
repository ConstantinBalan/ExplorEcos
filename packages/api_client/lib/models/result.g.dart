// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      id: json['id'] as int,
      cachedVotesTotal: json['cachedVotesTotal'] as int,
      captive: json['captive'] as bool,
      photos: (json['photos'] as List<dynamic>)
          .map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
      qualityGrade: json['qualityGrade'] as String,
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'id': instance.id,
      'cachedVotesTotal': instance.cachedVotesTotal,
      'captive': instance.captive,
      'photos': instance.photos,
      'qualityGrade': instance.qualityGrade,
    };
