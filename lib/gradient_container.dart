import 'package:first_application/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlighment = Alignment.topLeft;
const endAlighment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.customColors, {super.key});
  final List<Color> customColors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: customColors,
          begin: startAlighment,
          end: endAlighment,
        ),
      ),
      child: const Center(
          child: DiceRoller(),),
    );
  }
}
