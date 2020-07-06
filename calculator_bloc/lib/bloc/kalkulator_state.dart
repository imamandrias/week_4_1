import 'package:equatable/equatable.dart';

abstract class KalkulatorState extends Equatable{
  @override
  List<Object> get props => [];
}

class InitialCalculator extends KalkulatorState{
  final double result;
  InitialCalculator(this.result);
  @override
  List<Object> get props => super.props..addAll([result]);
}

class Calculated extends KalkulatorState{
  final double result;
  final double input;
  final String kata_1;
  final String kata_2;
  Calculated(this.result, this.input, this.kata_1, this.kata_2);
  @override
  List<Object> get props => super.props..addAll([result]);
}