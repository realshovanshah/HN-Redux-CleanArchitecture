import 'package:newsletter_reader/features/weekly-newsletter/data/models/hacker_story_model.dart';

abstract class NewsLocalDatasource {
  /// Gets the last cached [HackerStoryModel] which was fetched
  /// the last time the user had an internet connection.
  ///
  /// Throws [CacheException] if no cached data is present.
  Future<HackerStoryModel> getLastHackerStory();

  Future<void> cacheHackerStory(HackerStoryModel hackerStoryModel);
}
