import 'package:flutter/material.dart';
import 'package:for_loke/core/theme_extensions.dart';
import 'package:for_loke/presentation/widgets/app_svg_widget.dart';

class AppNavBarItem extends StatelessWidget {
  final bool hasBadge;
  final int badgeCount;
  final String assetPath;
  final Color? color;
  const AppNavBarItem({
    super.key,
    this.hasBadge = false,
    this.badgeCount = 10,
    this.color,
    required this.assetPath,
  });

  @override
  Widget build(BuildContext context) {
    return Badge.count(
      count: badgeCount,
      isLabelVisible: hasBadge,
      backgroundColor: context.theme.primaryColor,
      child: AppSvgWidget(path: assetPath, color: color),
    );
  }
}
