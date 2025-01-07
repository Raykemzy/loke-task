import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:for_loke/core/context_extensions.dart';
import 'package:for_loke/gen/assets.gen.dart';
import 'package:for_loke/presentation/widgets/app_svg_widget.dart';

class PickOptionSection extends StatelessWidget {
  const PickOptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Pick an option.', style: context.theme.textTheme.bodyMedium),
              Text(
                'See who has a similar mind.',
                style: context.theme.textTheme.bodyMedium,
              )
            ],
          ),
          const Spacer(),
          _IconContainer(iconPath: Assets.svgs.mic),
          10.horizontalSpace,
          const _IconContainer(),
        ],
      ),
    );
  }
}

class _IconContainer extends StatelessWidget {
  final String? iconPath;
  const _IconContainer({this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: context.theme.primaryColor),
        color:
            iconPath == null ? context.theme.primaryColor : Colors.transparent,
      ),
      child: Center(
        child: iconPath == null
            ? const Icon(CupertinoIcons.arrow_right)
            : AppSvgWidget(path: iconPath!),
      ),
    );
  }
}
