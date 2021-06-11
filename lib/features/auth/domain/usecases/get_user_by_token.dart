import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:newsletter_reader/core/errors/failures.dart';
import 'package:newsletter_reader/core/usecases/usecase.dart';
import 'package:newsletter_reader/features/auth/domain/entities/user.dart';

import '../repositories/user_repository.dart';

class GetUserByToken implements UseCase<User, Params> {
  const GetUserByToken(this.repository);
  final UserRepository repository;

  @override
  Future<Either<Failure, User>> call(Params params) async {
    return await repository.getUserbyToken(params.token);
  }
}

class Params extends Equatable {
  const Params({required this.token});
  final String token;

  @override
  List<Object?> get props => [];
}
