import 'package:dartz/dartz.dart';
import 'package:newsletter_reader/core/errors/failures.dart';
import 'package:newsletter_reader/features/auth/domain/entities/user.dart';

import '../repositories/user_repository.dart';

class GetUserByToken {
  final UserRepository repository;

  GetUserByToken(this.repository);

  Future<Either<Failure, User>> execute({
    required String token,
  }) async {
    return await repository.getUserbyToken(token);
  }
}
