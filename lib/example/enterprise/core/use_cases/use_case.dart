/// ENTERPRISE: Core - Base UseCase with Either (Result type).
/// In real app: use dartz Either<Failure, T> or fpdart.
import '../errors/failure.dart';

typedef UseCaseResult<T> = Future<(Failure?, T?)>;

abstract class UseCase<Type, Params> {
  UseCaseResult<Type> call(Params params);
}

/// No params use case
abstract class UseCaseNoParams<Type> {
  UseCaseResult<Type> call();
}
