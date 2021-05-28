import 'package:dartz/dartz.dart';
import 'package:newsletter_reader/core/errors/failures.dart';
import 'package:newsletter_reader/features/weekly-newsletter/domain/entities/hacker_news.dart';

abstract class NewsRepository {
  Future<Either<Failure, HackerStory>> getStorybyId(int id);
}
