import 'package:newsletter_reader/features/weekly-newsletter/data/models/hacker_story_model.dart';

abstract class NewsRemoteDatasource {
  /// Calls the hackernews.heroku.com api.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<HackerStoryModel> getStorybyId(int id);
}
