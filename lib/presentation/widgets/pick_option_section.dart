import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:for_loke/core/context_extensions.dart';
import 'package:for_loke/gen/assets.gen.dart';
import 'package:for_loke/presentation/widgets/app_svg_widget.dart';
import 'package:for_loke/presentation/widgets/option_container.dart';

class PickOptionSection extends StatefulWidget {
  const PickOptionSection({super.key});

  @override
  State<PickOptionSection> createState() => _PickOptionSectionState();
}

class _PickOptionSectionState extends State<PickOptionSection> {
  final List<({String letter, String content})> options = [
    (letter: 'A', content: 'The peace in the early mornings'),
    (letter: 'B', content: 'The magical golden hours'),
    (letter: 'C', content: 'Wind-down time after dinners'),
    (letter: 'D', content: 'The serenity past midnight'),
  ];

  String selectedOption = '';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: LayoutBuilder(
              builder: (context, constraints) {
                final double screenWidth = constraints.maxWidth;
                final double optionWidth = (screenWidth - (40.w * 1)) / 2;
                return Wrap(
                  spacing: 15.w,
                  runSpacing: 15.h,
                  children: List.generate(
                    options.length,
                    (index) => SizedBox(
                      width: optionWidth,
                      child: OptionContainer(
                        option: options[index],
                        isSelected: selectedOption == options[index].letter,
                        onTap: () => _selectOption(options[index].letter),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          10.verticalSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pick an option.',
                      style: context.theme.textTheme.displayMedium,
                    ),
                    Text(
                      'See who has a similar mind.',
                      style: context.theme.textTheme.displayMedium,
                    )
                  ],
                ),
                const Spacer(),
                _IconContainer(iconPath: Assets.svgs.mic),
                10.horizontalSpace,
                const _IconContainer(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _selectOption(String letter) {
    setState(() => selectedOption = letter);
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
