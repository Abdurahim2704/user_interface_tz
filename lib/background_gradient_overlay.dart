import 'dart:ui';

import 'package:flutter/material.dart';

class BackgroundGradientOverlay extends StatelessWidget {
  final Widget child;
  const BackgroundGradientOverlay({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(1.2, -0.7),
              end: Alignment(-0.5, 1),
              stops: [0, 0.22, 0.72, 1],
              colors: [
                Color(0xffFF8F8F),
                Color(0xFF9593F0),
                Color(0xFF8C8AFF),
                Color(0xFF4200FF)
              ],
            ),
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(
              sigmaX: 100,
              sigmaY:
                  100), // Adjust the sigma values to increase or decrease the blur
          child: Container(
            color: Colors.transparent,
          ),
        ),
        child
      ],
    );
  }
}
