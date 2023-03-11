// Mock number trivia repository.

import 'package:cleanarhitecture/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:cleanarhitecture/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:cleanarhitecture/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
 late GetConcreteNumberTrivia usecase;
  late MockNumberTriviaRepository mockNumberTriviaRepository;

//runs before test.

  setUp((){
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetConcreteNumberTrivia(mockNumberTriviaRepository);

  });

  final tNumber = 1;
  final  tNumberTrivia = NumberTrivia(text: "test", number: 1);
  test('should get trivia for the number from the repository', () 
  async {
     mockNumberTriviaRepository = MockNumberTriviaRepository();
     usecase = GetConcreteNumberTrivia(mockNumberTriviaRepository);

    //Arrange
    when(() => mockNumberTriviaRepository.getConcreteNumberTrivia(any()),).thenAnswer((_) async =>  Right(tNumberTrivia));

   
        
    //act
    final result = await usecase.excecute(number: tNumber);


    //assert
    expect(result,  Right(tNumberTrivia));
    verify(() => mockNumberTriviaRepository.getConcreteNumberTrivia(tNumber),);

    verifyNoMoreInteractions(mockNumberTriviaRepository);
  });
}
