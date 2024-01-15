import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/constants.dart';

class ContactContiner extends StatelessWidget {
  const ContactContiner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      height: 250.h,
      width: 370.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade900,
      ),
      child: Column(children: [
        const Flex(direction: Axis.horizontal, children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            child: Text('Conatct info', style: textStyles),
          ),
        ]),
        box2,
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flex(
              direction: Axis.horizontal,
              children: [
                Icon(Icons.phone_outlined, color: Colors.white),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "  +919846251605",
                  style: textStyle,
                ),
              ],
            ),
            Spacer(
              flex: 2,
            ),
            Icon(Icons.video_call, color: Colors.white),
            Spacer(),
            Icon(Icons.message, color: Colors.white),
          ],
        ),
        box2,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/whatsapp.png',
              height: 30,
            ),
            const Text("   Message  +91 902736554355", style: textStyle),
          ],
        ),
        box2,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/whatsapp.png',
              height: 30,
            ),
            const Text("    Voice call +91 90273655435", style: textStyle),
          ],
        ),
        box2,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/whatsapp.png',
              height: 30,
            ),
            const Text("     Video call +91 9072951662", style: textStyle),
          ],
        )
      ]),
    );
  }
}
