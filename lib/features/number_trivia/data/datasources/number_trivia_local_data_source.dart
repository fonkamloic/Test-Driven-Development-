import 'package:tdd/features/number_trivia/data/models/number_trivia_model.dart';

abstract class NumberTriviaLocalDataSource {
  /// Gets the cahed [NumberTriviaModel] which was gotten the last time
  /// the user had an internet connection.
  /// 
  /// Throus a [CacheException] for all error codes.
  Future<NumberTriviaModel> getLastNumberTrivial();
  Future<void> cacheNumberTrivia(NumberTriviaModel triviaModel);
}
