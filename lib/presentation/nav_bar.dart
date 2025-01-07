import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:for_loke/core/context_extensions.dart';
import 'package:for_loke/gen/assets.gen.dart';
import 'package:for_loke/presentation/home_view.dart';
import 'package:for_loke/presentation/widgets/nav_bar_item.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomeView(),
      bottomNavigationBar: NavigationBar(
        height: 80.h,
        selectedIndex: selectedIndex,
        indicatorColor: Colors.transparent,
        backgroundColor: context.theme.colorScheme.surface,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        destinations: [
          NavigationDestination(
            label: '',
            icon: AppNavBarItem(assetPath: Assets.svgs.cards),
            selectedIcon: AppNavBarItem(
              assetPath: Assets.svgs.cards,
              color: context.theme.primaryColor,
            ),
          ),
          NavigationDestination(
            label: '',
            icon: AppNavBarItem(assetPath: Assets.svgs.flame, hasBadge: true),
            selectedIcon: AppNavBarItem(
              hasBadge: true,
              assetPath: Assets.svgs.flame,
              color: context.theme.primaryColor,
            ),
          ),
          NavigationDestination(
            label: '',
            icon: AppNavBarItem(assetPath: Assets.svgs.icons, hasBadge: true),
            selectedIcon: AppNavBarItem(
              hasBadge: true,
              assetPath: Assets.svgs.profile,
              color: context.theme.primaryColor,
            ),
          ),
          NavigationDestination(
            label: '',
            icon: AppNavBarItem(assetPath: Assets.svgs.profile),
            selectedIcon: AppNavBarItem(
              assetPath: Assets.svgs.profile,
              color: context.theme.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
