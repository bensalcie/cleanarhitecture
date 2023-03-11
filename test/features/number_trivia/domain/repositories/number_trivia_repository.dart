import 'package:cleanarhitecture/core/error/failures.dart';
import 'package:cleanarhitecture/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:dartz/dartz.dart';

abstract class NumberTriviaRepository{
  Future<Either<Failure,NumberTrivia>>getConcreteNumberTrivia(int number);
  Future<Either<Failure,NumberTrivia>> getRandomNumberTrivia();
}