import 'package:equatable/equatable.dart';

abstract class TipsEvent extends Equatable {
  const TipsEvent();
}

class FetchTips extends TipsEvent {
  @override
  List<Object> get props => [];
}
