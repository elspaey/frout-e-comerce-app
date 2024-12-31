abstract class Failure {
  final String failureMessage;

  Failure(this.failureMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.failureMessage);
}
