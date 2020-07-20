import 'package:dartz/dartz.dart';
import 'package:tdd/core/error/failures.dart';
import 'package:tdd/features/number_trivia/domain/entities/number_trivial.dart';

abstract class NumberTrivialRepository {
  Future<Either<Failure, NumberTrivia>>  getConcreteNumberTrivial(int number);
  Future<Either<Failure, NumberTrivia>>  getRandomNumberTrivial();
}
