import 'package:equatable/equatable.dart';

class HackerStory extends Equatable {
  const HackerStory(
    this.by,
    this.id,
    this.descendants,
    this.kids,
    this.score,
    this.title,
    this.time,
    this.type,
    this.url,
    this.text,
  );

  final String by;

  final int id;

  final int descendants;

  final List<int> kids;

  final int score;

  final String title;

  final String? text;

  final int time;

  final String type;

  final String url;

  @override
  List<Object?> get props => [id];
}
