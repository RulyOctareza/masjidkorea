part of 'masjid_cubit.dart';

abstract class MasjidState extends Equatable {
  const MasjidState();

  @override
  List<Object> get props => [];
}

class MasjidInitial extends MasjidState {}

class MasjidLoading extends MasjidState {}

class MasjidSuccess extends MasjidState {
  final List<MasjidModel> masjids;

  const MasjidSuccess(this.masjids);

  @override
  List<Object> get props => [masjids];
}

class MasjidFailed extends MasjidState {
  final String error;

  const MasjidFailed(this.error);

  @override
  List<Object> get props => [error];
}
