import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:newsletter_reader/core/errors/failures.dart';
import 'package:newsletter_reader/features/auth/domain/entities/user.dart';
import 'package:newsletter_reader/features/auth/domain/repositories/user_repository.dart';
import 'package:newsletter_reader/features/auth/domain/usecases/get_user_by_token.dart';

class MockUserRepository extends Mock implements UserRepository {
  @override
  Future<Either<Failure, User>> getUserbyToken(String? token) =>
      super.noSuchMethod(
        Invocation.method(#getUserbyToken, [token]),
        returnValue: Future<Either<Failure, User>>.value(
          const Right(User(
            email: 'test@gmail.com',
            id: 1,
            imageUrl: 'test.com/url',
            name: 'test test',
          )),
        ),
      );
}

void main() {
  late GetUserByToken usecase;
  late MockUserRepository mockUserRepository;

  setUp(() {
    mockUserRepository = MockUserRepository();
    usecase = GetUserByToken(mockUserRepository);
  });

  const tToken = '1';
  const tUser = User(
    email: 'test@gmail.com',
    id: 1,
    imageUrl: 'test.com/url',
    name: 'test test',
  );

  test(
    'should get user by id for the repository',
    () async {
      when(mockUserRepository.getUserbyToken(any))
          .thenAnswer((_) async => const Right(tUser));

      final result = await usecase(const Params(token: tToken));

      expect(result, const Right(tUser));

      verify(mockUserRepository.getUserbyToken(any));
      verifyNoMoreInteractions(mockUserRepository);
    },
  );
}
