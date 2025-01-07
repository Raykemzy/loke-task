import 'package:flutter/material.dart';
import 'package:for_loke/core/context_extensions.dart';
import 'package:for_loke/presentation/widgets/app_svg_widget.dart';

class AppNavBarItem extends StatelessWidget {
  final int badgeCount;
  final String assetPath;
  final Color? color;
  final bool hasBadge;
  const AppNavBarItem({
    super.key,
    this.color,
    this.badgeCount = 0,
    this.hasBadge = false,
    required this.assetPath,
  });

  @override
  Widget build(BuildContext context) {
    return Badge.count(
      count: badgeCount,
      isLabelVisible: hasBadge || badgeCount > 0,
      textColor: badgeCount <= 0 ? Colors.transparent : Colors.black,
      backgroundColor: context.theme.primaryColor,
      textStyle: context.theme.textTheme.displayMedium,
      smallSize: badgeCount <= 0 ? 2 : null,
      child: AppSvgWidget(path: assetPath, color: color),
    );
  }
}
