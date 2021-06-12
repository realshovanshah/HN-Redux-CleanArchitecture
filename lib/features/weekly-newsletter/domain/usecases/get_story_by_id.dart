import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:newsletter_reader/core/errors/failures.dart';
import 'package:newsletter_reader/core/usecases/usecase.dart';
import 'package:newsletter_reader/features/weekly-newsletter/domain/entities/hacker_story.dart';

import '../repositories/news_repository.dart';

class GetStoryById implements UseCase<HackerStory, Params> {
  GetStoryById(this.repository);
  final NewsRepository repository;

  @override
  Future<Either<Failure, HackerStory>> call(
    Params params,
  ) async {
    return await repository.getStorybyId(params.id);
  }
}

class Params extends Equatable {
  const Params({required this.id});

  final int id;

  @override
  List<Object?> get props => [id];
}
