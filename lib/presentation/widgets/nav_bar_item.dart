import 'package:flutter/material.dart';

class AppNavBarItem extends StatelessWidget {
  final bool hasBadge;
  final int badgeCount;
  final String assetPath;
  const AppNavBarItem({
    super.key,
    this.hasBadge = false,
    this.badgeCount = 0,
    required this.assetPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
