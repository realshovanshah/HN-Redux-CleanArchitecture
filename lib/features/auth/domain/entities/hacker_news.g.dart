// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hacker_news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HackerStory _$HackerStoryFromJson(Map<String, dynamic> json) {
  return HackerStory(
    json['by'] as String,
    json['id'] as int,
    json['descendants'] as int,
    (json['kids'] as List<dynamic>).map((e) => e as int).toList(),
    json['score'] as int,
    json['title'] as String,
    json['time'] as int,
    json['type'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$HackerStoryToJson(HackerStory instance) =>
    <String, dynamic>{
      'by': instance.by,
      'id': instance.id,
      'descendants': instance.descendants,
      'kids': instance.kids,
      'score': instance.score,
      'title': instance.title,
      'time': instance.time,
      'type': instance.type,
      'url': instance.url,
    };

HackerAsk _$HackerAskFromJson(Map<String, dynamic> json) {
  return HackerAsk(
    json['by'] as String,
    json['descendants'] as int,
    json['id'] as int,
    (json['kids'] as List<dynamic>).map((e) => e as int).toList(),
    json['score'] as int,
    json['text'] as String,
    json['time'] as int,
    json['title'] as String,
    json['type'] as String,
  );
}

Map<String, dynamic> _$HackerAskToJson(HackerAsk instance) => <String, dynamic>{
      'by': instance.by,
      'descendants': instance.descendants,
      'id': instance.id,
      'kids': instance.kids,
      'score': instance.score,
      'text': instance.text,
      'time': instance.time,
      'title': instance.title,
      'type': instance.type,
    };
