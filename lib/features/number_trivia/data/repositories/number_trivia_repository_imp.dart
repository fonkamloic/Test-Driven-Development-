import 'package:flutter/foundation.dart';
import 'package:tdd/core/platform/network_info.dart';
import 'package:tdd/features/number_trivia/data/datasources/number_trivia_local_data_source.dart';
import 'package:tdd/features/number_trivia/data/datasources/number_trivia_remote_datasource.dart';
import 'package:tdd/features/number_trivia/domain/entities/number_trivial.dart';
import 'package:tdd/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:tdd/features/number_trivia/domain/repositories/number_trivial_repository.dart';

class NumberTriviaRepositoryImpl implements NumberTrivialRepository {
  final NumberTriviaRemoteDataSource remoteDataSource;
  final NumberTriviaLocalDataSource localDataSource;
  final NetWorkInfo networkInfo;

  NumberTriviaRepositoryImpl(
      {@required this.remoteDataSource,
      @required this.localDataSource,
      @required this.networkInfo});
  @override
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivial(int number) {
    // TODO: implement getConcreteNumberTrivial
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivial() {
    // TODO: implement getRandomNumberTrivial
    throw UnimplementedError();
  }
}
