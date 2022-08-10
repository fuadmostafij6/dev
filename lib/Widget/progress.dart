import 'package:flutter/material.dart';
import 'package:flutter_web/colors_const.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: Duration(seconds: 1),
        builder: (context, double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label,
                  style: TextStyle(color: Colors.white),
                ),
                Text((value * 100).toInt().toString() + "%"),
              ],
            ),
            SizedBox(height: 20 / 2),
            LinearProgressIndicator(
              value: value,
              color: Colors.redAccent,
              backgroundColor: ColorConst.lightWidgetColor,
            ),
          ],
        ),
      ),
    );
  }
}