import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd/features/number_trivia/domain/entities/number_trivial.dart';
import 'package:tdd/features/number_trivia/domain/repositories/number_trivial_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tdd/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTrivialRepository {}

void main() {
  GetConcreteNumberTrivia usecase;
  MockNumberTriviaRepository mockNumberTriviaRepository;
  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetConcreteNumberTrivia(mockNumberTriviaRepository);
  });
  final tNumber = 1;
  final tNumberTrivia = NumberTrivia(text: "test", number: 1);
  test("Should get trivia for the number from the repository", () async {
    // arrange
    when(mockNumberTriviaRepository.getConcreteNumberTrivial(any))
        .thenAnswer((realInvocation) async => Right(tNumberTrivia));

    // act
    final result = await usecase(Params(number: tNumber));

    // assert
    expect(result, Right(tNumberTrivia));
    verify(mockNumberTriviaRepository.getConcreteNumberTrivial(tNumber));
  });
}
