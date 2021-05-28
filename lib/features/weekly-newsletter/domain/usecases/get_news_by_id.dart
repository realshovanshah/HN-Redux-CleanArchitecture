import 'package:dartz/dartz.dart';
import 'package:newsletter_reader/core/errors/failures.dart';
import 'package:newsletter_reader/features/weekly-newsletter/domain/entities/hacker_news.dart';

import '../repositories/news_repository.dart';

class GetStoryById {
  GetStoryById(this.repository);
  final NewsRepository repository;

  Future<Either<Failure, HackerStory>> execute({
    required int id,
  }) async {
    return await repository.getStorybyId(id);
  }
}
