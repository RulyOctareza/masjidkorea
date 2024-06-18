import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:masjidkorea/models/masjid_model.dart';
import 'package:masjidkorea/services/masjid_service.dart';

part 'masjid_state.dart';

class MasjidCubit extends Cubit<MasjidState> {
  MasjidCubit() : super(MasjidInitial());

  void fetchMasjids() async {
    try {
      emit(MasjidLoading());

      List<MasjidModel> Masjids = await MasjidService().fetchMasjids();

      emit(MasjidSuccess(Masjids));
    } catch (e) {
      emit(MasjidFailed(e.toString()));
    }
  }
}
