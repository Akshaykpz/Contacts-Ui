import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:globosoft_mission_test/utils/colors.dart';

import '../utils/constants.dart';

class ConatactInfo extends StatelessWidget {
  final IconData icons;
  final String text;
  const ConatactInfo({super.key, required this.icons, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: SizedBox(
        child: Row(children: [
          Icon(
            icons,
            color: Appcolr().iconColor,
          ),
          SizedBox(
            width: 10.w,
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
