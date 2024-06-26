import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:masjidkorea/cubit/masjid_cubit.dart';
import 'package:masjidkorea/widgets/space_card.dart';

class CommunityMasjidPage extends StatelessWidget {
  final String community;

  const CommunityMasjidPage(this.community, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Masjid $community'),
      ),
      body: BlocBuilder<MasjidCubit, MasjidState>(
        builder: (context, state) {
          if (state is MasjidSuccess) {
            // Filter masjid berdasarkan komunitas

            final masjids = state.masjids
                .where((masjid) => masjid.comunity == community)
                .toList();

            if (masjids.isEmpty) {
              return Center(
                child: Text('Tidak ada masjid untuk komunitas ini.'),
              );
            }

            return ListView.builder(
              itemCount: masjids.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    SpaceCard(masjids[index]),
                  ],
                );
              },
            );
          } else if (state is MasjidLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is MasjidFailed) {
            return Center(
              child: Text('Gagal memuat masjid: ${state.error}'),
            );
          } else {
            return const Center(
              child: Text('Tidak ada data masjid.'),
            );
          }
        },
      ),
    );
  }
}
