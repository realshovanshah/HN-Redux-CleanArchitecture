import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:newsletter_reader/features/weekly-newsletter/data/models/hacker_story_model.dart';
import 'package:newsletter_reader/features/weekly-newsletter/domain/entities/hacker_story.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tHackerStoryModel = HackerStoryModel(
    by: 'dhouston',
    descendants: 71,
    id: 8863,
    kids: List.unmodifiable(
        [8952, 9224, 8917, 8884, 8878, 8870, 8980, 8934, 8876]),
    score: 111,
    time: 1175714200,
    title: 'My YC app: Dropbox - Throw away your USB drive',
    type: 'story',
    url: 'http://www.getdropbox.com/u/2/screencast.html',
    text: 'text',
  );
  test('should be a subclass of HackerStory entity', () {
    expect(tHackerStoryModel, isA<HackerStory>());
  });

  test('should return a valid model', () {
    final Map<String, dynamic> jsonMap =
        jsonDecode(fixture('hacker_story.json'));

    final result = HackerStoryModel.fromJson(jsonMap);

    expect(result, tHackerStoryModel);
  });

  test('should return a valid json map', () {
    final result = tHackerStoryModel.toJson();

    final expectedMap = {
      'by': 'dhouston',
      'descendants': 71,
      'id': 8863,
      'kids': [8952, 9224, 8917, 8884, 8878, 8870, 8980, 8934, 8876],
      'score': 111,
      'time': 1175714200,
      'title': 'My YC app: Dropbox - Throw away your USB drive',
      'type': 'story',
      'url': 'http://www.getdropbox.com/u/2/screencast.html',
      'text': 'text'
    };

    expect(result, expectedMap);
  });
}
