import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd/core/usecases/usecase.dart';
import 'package:tdd/features/number_trivia/domain/entities/number_trivial.dart';
import 'package:tdd/features/number_trivia/domain/repositories/number_trivial_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tdd/features/number_trivia/domain/usecases/get_random_number_trivia.dart';

class MockRandomTriviaRepository extends Mock
    implements NumberTrivialRepository {}

void main() {
  GetRandomNumberTrivia usecase;
  MockRandomTriviaRepository mockRamdomTriviaRepository;
  setUp(() {
    mockRamdomTriviaRepository = MockRandomTriviaRepository();
    usecase = GetRandomNumberTrivia(mockRamdomTriviaRepository);
  });
  final tNumberTrivia = NumberTrivia(text: "test", number: 1);
  test("Should get trivia from the repository", () async {
    // arrange
    when(mockRamdomTriviaRepository.getRandomNumberTrivial())
        .thenAnswer((realInvocation) async => Right(tNumberTrivia));

    // act
    final result = await usecase(NoParams());

    // assert
    expect(result, Right(tNumberTrivia));
    verify(mockRamdomTriviaRepository.getRandomNumberTrivial());
  });
}
