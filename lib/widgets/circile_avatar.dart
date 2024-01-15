import 'package:flutter/material.dart';
import 'package:globosoft_mission_test/utils/colors.dart';

class CircileAvtar extends StatelessWidget {
  final IconData? add;
  final String? bed;

  const CircileAvtar({super.key, required this.add, this.bed});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey.shade800,
      child: Icon(
        add,
        color: Appcolr().textColor,
      ),
    );
  }
}
