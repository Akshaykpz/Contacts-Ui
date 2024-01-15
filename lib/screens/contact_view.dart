import 'package:flutter/material.dart';
import 'package:globosoft_mission_test/widgets/app_bar.dart';

import '../utils/colors.dart';
import '../utils/constants.dart';
import '../widgets/circile_avatar.dart';
import '../widgets/conact_call.dart';
import '../widgets/conact_continer.dart';
import '../widgets/conatct_info.dart';

class ContactView extends StatefulWidget {
  final String text1;
  final String image;
  final String text2;

  const ContactView(
      {super.key,
      required this.text1,
      required this.image,
      required this.text2});

  @override
  State<ContactView> createState() => _HomehheState();
}

class _HomehheState extends State<ContactView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolr().backgroundColor,
      appBar: AppBarView(
        backgroundColor: Appcolr().backgroundColor,
        forenColor: Appcolr().textColor,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset(
            widget.image,
            height: 160,
          ),
          box,
          Text(widget.text1, style: textStyle21),
          box,
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircileAvtar(add: Icons.call_outlined),
              CircileAvtar(
                add: Icons.message,
              ),
              CircileAvtar(
                add: Icons.videocam_outlined,
              ),
            ],
          ),
          box,
          const ConatactCall(),
          box2,
          const ContactContiner(),
          box,
          const Divider(
            thickness: 1,
          ),
          box,
          const Flex(
            direction: Axis.horizontal,
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text("Contact settings", style: textStyles)),
            ],
          ),
          box2,
          const ConatactInfo(
            icons: Icons.block,
            text: 'Block numbers',
          ),
          box2,
          const ConatactInfo(
            icons: Icons.diversity_1,
            text: 'Divert to voicemail',
          ),
          box2,
          const ConatactInfo(
            icons: Icons.link,
            text: 'view linked contacts',
          ),
        ]),
      ),
    );
  }
}
