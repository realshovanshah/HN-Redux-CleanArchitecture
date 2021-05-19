import 'package:dartz/dartz.dart';
import 'package:newsletter_reader/core/errors/failures.dart';
import 'package:newsletter_reader/features/auth/domain/entities/user.dart';

abstract class UserRepository {
  Future<Either<Failure, User>> getUserbyToken(String token);
  Future<Either<Failure, User>> getUserbyCredentials(
      String email, String password);
}
