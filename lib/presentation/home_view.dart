import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:for_loke/presentation/widgets/custom_scaffold.dart';
import 'package:for_loke/presentation/widgets/home_view_header.dart';
import 'package:for_loke/presentation/widgets/pick_option_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: const SafeArea(
          child: Column(
            children: [
              HomeViewHeader(),
              Spacer(),
              PickOptionSection(),
            ],
          ),
        ),
      ),
    );
  }
}
