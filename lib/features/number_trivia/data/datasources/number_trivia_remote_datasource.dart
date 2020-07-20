import 'package:tdd/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:tdd/features/number_trivia/domain/entities/number_trivial.dart';

abstract class NumberTriviaRemoteDataSource {
  /// Calls the http://numbersapi.com/{number} endpoint.
  /// 
  /// Throus a [ServerException] for all error codes.
  Future<NumberTriviaModel> getConcreteNumberTrivia(int number);

/// Calls the http://numbersapi.com/{number} endpoint.
  /// 
  /// Throus a [ServerException] for all error codes.
  Future<NumberTriviaModel> getRandomNumberTrivia();
}
