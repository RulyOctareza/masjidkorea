import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:masjidkorea/cubit/masjid_cubit.dart';
import 'package:masjidkorea/models/masjid_model.dart';
import 'package:masjidkorea/theme.dart';
import 'package:masjidkorea/widgets/space_card.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget daftarmasjid(List<MasjidModel> masjids) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: edge, top: edge),
            child: Text(
              'Daftar Masjid di Korea Selatan',
              style: blackTextStyle.copyWith(
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Column(
            children: masjids.map((MasjidModel masjid) {
              return Column(
                children: [
                  SpaceCard(masjid),
                  const SizedBox(
                    height: 10,
                  )
                ],
              );
            }).toList(),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: BlocConsumer<MasjidCubit, MasjidState>(
          listener: (context, state) {
            if (state is MasjidFailed) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: purpleColor,
                  content: Text(state.error), // Tampilkan pesan kesalahan
                ),
              );
            }
          },
          builder: (context, state) {
            if (state is MasjidSuccess) {
              return ListView(
                children: [
                  daftarmasjid(state.masjids),
                ],
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
