import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/constants.dart';
import '../widgets/navigate_bar.dart';
import '../widgets/textfiled.dart';
import 'contact_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black12,
          body: Column(
            children: [
              const Textfiled(),
              box,
              const Flex(
                direction: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Today',
                      style: textStyle,
                    ),
                  ),
                ],
              ),
              box2,
              Expanded(
                child: ListView.builder(
                  itemCount: itemList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ContactView(
                                    text1: itemList[index]['text1'],
                                    image: itemList[index]['image'],
                                    text2: itemList[index]['text2'])));
                      },
                      leading: CircleAvatar(
                          backgroundImage: AssetImage(
                        itemList[index]['image'],
                      )),
                      trailing: Icon(
                        itemList[index]['icon'],
                        color: Appcolr().textColor,
                      ),
                      title: Text(
                        itemList[index]['text1'],
                        style: textStyle,
                      ),
                      subtitle: Text(
                        itemList[index]['text2'],
                        style: textStyle,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          bottomNavigationBar: const NavigateBar()),
    );
  }
}
