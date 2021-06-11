import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:newsletter_reader/core/errors/failures.dart';
import 'package:newsletter_reader/core/usecases/usecase.dart';
import 'package:newsletter_reader/features/weekly-newsletter/domain/entities/hacker_news.dart';
import 'package:newsletter_reader/features/weekly-newsletter/domain/repositories/news_repository.dart';
import 'package:newsletter_reader/features/weekly-newsletter/domain/usecases/get_story_by_id.dart';

class MockStoryRepository extends Mock implements NewsRepository {
  @override
  Future<Either<Failure, HackerStory>> getStorybyId(int? id) =>
      super.noSuchMethod(
        Invocation.method(#getStorybyToken, [id]),
        returnValue: Future<Either<Failure, HackerStory>>.value(
          const Right(HackerStory('', 1, 1, [], 2, '', 2343, '', '', '')),
        ),
      );
}

void main() {
  late GetStoryById usecase;
  late MockStoryRepository mockStoryRepository;

  setUp(() {
    mockStoryRepository = MockStoryRepository();
    usecase = GetStoryById(mockStoryRepository);
  });

  const tToken = 1;
  const tStory = HackerStory('', 1, 1, [], 2, '', 2343, '', '', '');

  test(
    'should get a Story by id for the repository',
    () async {
      when(mockStoryRepository.getStorybyId(any))
          .thenAnswer((_) async => const Right(tStory));

      final result = await usecase(const Params(id: tToken));

      expect(result, const Right(tStory));

      verify(mockStoryRepository.getStorybyId(any));
      verifyNoMoreInteractions(mockStoryRepository);
    },
  );
}
