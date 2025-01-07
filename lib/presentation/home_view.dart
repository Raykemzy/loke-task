import 'package:flutter/material.dart';
import 'package:for_loke/presentation/widgets/bio_section.dart';
import 'package:for_loke/presentation/widgets/custom_scaffold.dart';
import 'package:for_loke/presentation/widgets/home_view_header.dart';
import 'package:for_loke/presentation/widgets/pick_option_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeViewHeader(),
            Spacer(),
            BioSection(),
            PickOptionSection(),
          ],
        ),
      ),
    );
  }
}
