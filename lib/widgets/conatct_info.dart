import 'package:flutter/material.dart';
import 'package:globosoft_mission_test/utils/colors.dart';

class ConatactInfo extends StatelessWidget {
  final IconData icons;
  final String text;
  const ConatactInfo({super.key, required this.icons, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        child: Row(children: [
          Icon(
            icons,
            color: Appcolr().iconColor,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: textStyle,
          )
        ]),
      ),
    );
  }
}
