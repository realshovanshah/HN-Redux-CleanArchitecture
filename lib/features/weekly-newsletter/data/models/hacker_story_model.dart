import 'package:json_annotation/json_annotation.dart';
import 'package:newsletter_reader/features/weekly-newsletter/domain/entities/hacker_story.dart';

part 'hacker_story_model.g.dart';

@JsonSerializable()
class HackerStoryModel extends HackerStory {
  const HackerStoryModel({
    required this.by,
    required this.id,
    required this.descendants,
    required this.kids,
    required this.score,
    required this.title,
    required this.time,
    required this.type,
    required this.url,
    this.text,
  }) : super(by, id, descendants, kids, score, title, time, type, url, text);

  @override
  final String by;

  @override
  final int id;

  @override
  final int descendants;

  @override
  final List<int> kids;

  @override
  final int score;

  @override
  final String title;

  @override
  final String? text;

  @override
  final int time;

  @override
  final String type;

  @override
  final String url;

  factory HackerStoryModel.fromJson(Map<String, dynamic> json) =>
      _$HackerStoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$HackerStoryModelToJson(this);
}
