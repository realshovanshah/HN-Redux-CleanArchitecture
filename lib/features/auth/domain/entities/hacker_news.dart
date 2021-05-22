import 'package:json_annotation/json_annotation.dart';

part 'hacker_news.g.dart';

abstract class HackerNews {}

@JsonSerializable()
class HackerStory extends HackerNews {
  final String by;

  final int id;

  final int descendants;

  final List<int> kids;

  final int score;

  final String title;

  final int time;

  final String type;

  final String url;

  HackerStory(this.by, this.id, this.descendants, this.kids, this.score,
      this.title, this.time, this.type, this.url);

  factory HackerStory.fromJson(Map<String, dynamic> json) =>
      _$HackerStoryFromJson(json);
  Map<String, dynamic> toJson() => _$HackerStoryToJson(this);
}

@JsonSerializable()
class HackerAsk extends HackerNews {
  final String by;

  final int descendants;

  final int id;

  final List<int> kids;

  final int score;

  final String text;

  final int time;

  final String title;

  final String type;

  HackerAsk(this.by, this.descendants, this.id, this.kids, this.score,
      this.text, this.time, this.title, this.type);

  factory HackerAsk.fromJson(Map<String, dynamic> json) =>
      _$HackerAskFromJson(json);
  Map<String, dynamic> toJson() => _$HackerAskToJson(this);
}
