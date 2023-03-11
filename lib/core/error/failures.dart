import 'package:equatable/equatable.dart';

 abstract class Failure extends Equatable{
  final List properties = const <dynamic>[];
   const Failure([properties]);
  
  @override
  List<Object?> get props => [properties];
  

}