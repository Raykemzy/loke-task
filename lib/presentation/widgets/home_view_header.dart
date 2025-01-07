import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:for_loke/core/context_extensions.dart';
import 'package:for_loke/gen/assets.gen.dart';
import 'package:for_loke/presentation/widgets/app_svg_widget.dart';

class HomeViewHeader extends StatelessWidget {
  const HomeViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const _HeaderText(),
            10.horizontalSpace,
            Icon(
              CupertinoIcons.chevron_down,
              color: context.theme.colorScheme.secondary,
              shadows: [
                Shadow(
                  offset: const Offset(0, 4),
                  blurRadius: 8.0,
                  color: Colors.black.withOpacity(0.3),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                AppSvgWidget(
                  path: Assets.svgs.timer,
                  width: 15.w,
                ),
                5.horizontalSpace,
                Text(
                  '22h 00m',
                  style: context.theme.textTheme.displayMedium?.copyWith(
                    shadows: [
                      Shadow(
                        offset: const Offset(0, 2),
                        blurRadius: 8.0,
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ],
                  ),
                )
              ],
            ),
            10.horizontalSpace,
            Row(
              children: [
                AppSvgWidget(
                  path: Assets.svgs.profile,
                  color: context.theme.colorScheme.onSurface,
                  width: 25.w,
                ),
                Text(
                  '103',
                  style: context.theme.textTheme.displayMedium?.copyWith(
                    shadows: [
                      Shadow(
                        offset: const Offset(0, 2),
                        blurRadius: 8.0,
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}

class _HeaderText extends StatelessWidget {
  const _HeaderText();

  @override
  Widget build(BuildContext context) {
    const String text = 'Stroll Bonfire';
    const double letterSpacing = 2;
    return Stack(
      children: [
        Text(
          text,
          style: context.theme.textTheme.titleLarge?.copyWith(
            letterSpacing: letterSpacing,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 2
              ..color = const Color(0xFFB3ADF6),
          ),
        ),
        Text(
          text,
          style: context.theme.textTheme.titleLarge?.copyWith(
            letterSpacing: letterSpacing,
            color: context.theme.colorScheme.secondary,
            shadows: [
              Shadow(
                offset: const Offset(0, 4),
                blurRadius: 8.0,
                color: Colors.black.withOpacity(0.3),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
