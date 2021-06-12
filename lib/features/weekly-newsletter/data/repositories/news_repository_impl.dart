import 'package:flutter/foundation.dart';
import 'package:newsletter_reader/core/errors/exceptions.dart';
import 'package:newsletter_reader/core/platform/network_info.dart';
import 'package:newsletter_reader/features/weekly-newsletter/data/datasources/news_local_datasource.dart';
import 'package:newsletter_reader/features/weekly-newsletter/data/datasources/news_remote_datasource.dart';
import 'package:newsletter_reader/features/weekly-newsletter/domain/entities/hacker_story.dart';
import 'package:newsletter_reader/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:newsletter_reader/features/weekly-newsletter/domain/repositories/news_repository.dart';

class NewsRepositoryImpl implements NewsRepository {
  NewsRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });
  final NewsRemoteDatasource remoteDataSource;
  final NewsLocalDatasource localDataSource;
  final NetworkInfo networkInfo;

  @override
  Future<Either<Failure, HackerStory>> getStorybyId(int id) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteStory = await remoteDataSource.getStorybyId(id);
        await localDataSource.cacheHackerStory(remoteStory);
        return Right(remoteStory);
      } on ServerException {
        // debugPrint(e.message);
        return Left(ServerFailure());
      }
    } else {
      final localStory = await localDataSource.getLastHackerStory();
      return Right(localStory);
    }
  }
}
