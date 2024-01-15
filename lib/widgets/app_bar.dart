import 'package:flutter/material.dart';
import 'package:globosoft_mission_test/utils/colors.dart';

class AppBarView extends StatelessWidget implements PreferredSizeWidget {
  final Color forenColor;
  final Color backgroundColor;

  const AppBarView({
    Key? key,
    required this.backgroundColor,
    required this.forenColor,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: forenColor,
      backgroundColor: backgroundColor,
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        const SizedBox(
          width: 150,
        ),
        Icon(
          Icons.edit,
          color: Appcolr().textColor,
        ),
        Icon(
          Icons.star_outline,
          color: Appcolr().iconColor,
        ),
        Icon(
          Icons.more_vert,
          color: Appcolr().iconColor,
        )
      ]),
    );
  }
}
