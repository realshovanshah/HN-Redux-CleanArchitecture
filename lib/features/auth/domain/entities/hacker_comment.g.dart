// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hacker_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HackerComment _$HackerCommentFromJson(Map<String, dynamic> json) {
  return HackerComment(
    json['by'] as String,
    json['id'] as int,
    (json['kids'] as List<dynamic>).map((e) => e as int).toList(),
    json['parent'] as int,
    json['text'] as String,
    json['time'] as int,
    json['type'] as String,
  );
}

Map<String, dynamic> _$HackerCommentToJson(HackerComment instance) =>
    <String, dynamic>{
      'by': instance.by,
      'id': instance.id,
      'kids': instance.kids,
      'parent': instance.parent,
      'text': instance.text,
      'time': instance.time,
      'type': instance.type,
    };
