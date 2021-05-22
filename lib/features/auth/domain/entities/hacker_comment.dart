import 'package:json_annotation/json_annotation.dart';

part "hacker_comment.g.dart";

@JsonSerializable()
class HackerComment {
  final String by;

  final int id;

  final List<int> kids;

  final int parent;

  final String text;

  final int time;

  final String type;

  const HackerComment(this.by, this.id, this.kids, this.parent, this.text,
      this.time, this.type);

  factory HackerComment.fromJson(Map<String, dynamic> json) =>
      _$HackerCommentFromJson(json);
  Map<String, dynamic> toJson() => _$HackerCommentToJson(this);
}
