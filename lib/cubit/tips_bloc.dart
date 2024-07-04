import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:masjidkorea/cubit/tips_state.dart';
import 'package:masjidkorea/services/tips_event.dart';
import 'package:masjidkorea/services/tips_repository.dart';

class TipsBloc extends Bloc<TipsEvent, TipsState> {
  final TipsRepository repository;

  TipsBloc(this.repository) : super(TipsInitial());

  Stream<TipsState> mapEventToState(TipsEvent event) async* {
    if (event is FetchTips) {
      yield TipsLoading();
      try {
        final tips = await repository.fetchTips();
        yield TipsLoaded(tips);
      } catch (e) {
        yield TipsError(e.toString());
      }
    }
  }
}
