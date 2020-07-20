import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  Failure([List properties = const <dynamic>[]]) : super();

 
}

// General failures
class ServerFailure implements Failure {
  @override
  List<Object> get props => [];

  @override
  // TODO: implement stringify
  bool get stringify => throw UnimplementedError();
}

class CacheFailure implements Failure {
  @override
  List<Object> get props => [];

  @override
  // TODO: implement stringify
  bool get stringify => throw UnimplementedError();
}
