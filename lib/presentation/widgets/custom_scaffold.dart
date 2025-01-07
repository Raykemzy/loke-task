import 'package:flutter/material.dart';
import 'package:for_loke/core/context_extensions.dart';
import 'package:for_loke/gen/assets.gen.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;
  const CustomScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stack(
          children: [
            Container(
              width: context.width,
              height: context.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage(Assets.images.backgroundPic.path),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: const [0.1, 0.7],
                    colors: [Colors.transparent, Colors.black.withOpacity(0.3)],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: context.height / 2,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.1, 0.4],
                    colors: [Colors.transparent, Colors.black],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(width: context.width, height: context.height, child: body),
      ],
    );
  }
}
