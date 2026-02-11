/// ENTERPRISE: Core - Failure for error handling.
abstract class Failure {
  final String message;
  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure([super.msg = 'Server error']);
}

class CacheFailure extends Failure {
  CacheFailure([super.msg = 'Cache error']);
}
