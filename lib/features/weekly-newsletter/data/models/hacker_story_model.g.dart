// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hacker_story_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HackerStoryModel _$HackerStoryModelFromJson(Map<String, dynamic> json) {
  return HackerStoryModel(
    by: json['by'] as String,
    id: json['id'] as int,
    descendants: json['descendants'] as int,
    kids: (json['kids'] as List<dynamic>).map((e) => e as int).toList(),
    score: json['score'] as int,
    title: json['title'] as String,
    time: json['time'] as int,
    type: json['type'] as String,
    url: json['url'] as String,
    text: json['text'] as String?,
  );
}

Map<String, dynamic> _$HackerStoryModelToJson(HackerStoryModel instance) =>
    <String, dynamic>{
      'by': instance.by,
      'id': instance.id,
      'descendants': instance.descendants,
      'kids': instance.kids,
      'score': instance.score,
      'title': instance.title,
      'text': instance.text,
      'time': instance.time,
      'type': instance.type,
      'url': instance.url,
    };
