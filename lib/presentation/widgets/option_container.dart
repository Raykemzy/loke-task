import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:for_loke/core/context_extensions.dart';

class OptionContainer extends StatelessWidget {
  final bool isSelected;
  final ({String letter, String content}) option;
  final VoidCallback onTap;
  const OptionContainer({
    super.key,
    this.isSelected = false,
    required this.option,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = context.width;
    final containerWidth =
        screenWidth > 600 ? screenWidth / 2 - 40 : screenWidth - 32;
    return InkWell(
      onTap: onTap,
      child: AnimatedContainer(
        padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.w),
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        width: containerWidth,
        decoration: BoxDecoration(
          color: context.theme.colorScheme.onPrimary,
          borderRadius: BorderRadius.circular(12.sp),
          border: isSelected
              ? Border.all(width: 2.5, color: context.theme.primaryColor)
              : null,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.6),
              offset: const Offset(-6, -6),
              blurRadius: 10,
              spreadRadius: -4,
            ),
            BoxShadow(
              color: Colors.white.withOpacity(0.05),
              offset: const Offset(6, 6),
              blurRadius: 10,
              spreadRadius: -4,
            ),
          ],
        ),
        child: Row(
          children: [
            _LetterContainer(
              isSelected: isSelected,
              option: option.letter,
            ),
            10.horizontalSpace,
            Flexible(
              child: Text(
                option.content,
                style: context.theme.textTheme.displayMedium?.copyWith(
                  color: const Color(0xFFC4C4C4),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LetterContainer extends StatelessWidget {
  final bool isSelected;
  final String option;
  const _LetterContainer({required this.isSelected, required this.option});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? context.theme.primaryColor : Colors.transparent,
        border: Border.all(
          width: 1.5,
          color:
              isSelected ? context.theme.primaryColor : const Color(0xFFC4C4C4),
        ),
      ),
      child: Center(
        child: Text(
          option,
          style: context.theme.textTheme.displayMedium?.copyWith(
            color: const Color(0xFFC4C4C4),
          ),
        ),
      ),
    );
  }
}
