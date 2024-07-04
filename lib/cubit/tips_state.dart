import 'package:equatable/equatable.dart';
import 'package:masjidkorea/models/tips_model.dart';

abstract class TipsState extends Equatable {
  const TipsState();

  @override
  List<Object> get props => [];
}

class TipsInitial extends TipsState {}

class TipsLoading extends TipsState {}

class TipsLoaded extends TipsState {
  final List<Tips> tips;

  TipsLoaded(this.tips);

  @override
  List<Object> get props => [tips];
}

class TipsError extends TipsState {
  final String message;

  TipsError(this.message);

  @override
  List<Object> get props => [message];
}
