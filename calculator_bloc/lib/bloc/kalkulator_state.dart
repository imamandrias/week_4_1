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
  Calculated(this.result);
  @override
  List<Object> get props => super.props..addAll([result]);
}