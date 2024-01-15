import 'package:flutter/material.dart';
import 'package:globosoft_mission_test/utils/colors.dart';

class NavigateBar extends StatelessWidget {
  const NavigateBar({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
        data: NavigationBarThemeData(
          labelTextStyle: MaterialStateProperty.resolveWith<TextStyle>(
            (Set<MaterialState> states) =>
                states.contains(MaterialState.selected)
                    ? const TextStyle(color: Colors.white)
                    : const TextStyle(color: Colors.white70),
          ),
        ),
        child: NavigationBar(
          indicatorColor: Colors.grey.shade700,
          elevation: 1,
          backgroundColor: Colors.grey.shade900,
          destinations: [
            NavigationDestination(
              label: "Favourites",
              icon: Icon(
                Icons.star_border_outlined,
                color: Appcolr().iconColor,
              ),
            ),
            NavigationDestination(
              label: "Recent",
              icon: Icon(
                Icons.access_time_filled_sharp,
                color: Appcolr().iconColor,
              ),
            ),
            NavigationDestination(
              label: "Contacts",
              icon: Icon(
                Icons.account_box_outlined,
                color: Appcolr().iconColor,
              ),
            ),
          ],
        ));
  }
}
