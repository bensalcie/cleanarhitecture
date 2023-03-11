import 'package:cleanarhitecture/core/error/failures.dart';
import 'package:cleanarhitecture/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:cleanarhitecture/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';

class GetConcreteNumberTrivia{
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);


  Future<Either<Failure,NumberTrivia>> excecute({required int number})async{
    return await repository.getConcreteNumberTrivia(number);

  }

} 