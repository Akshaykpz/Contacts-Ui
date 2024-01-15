import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Textfiled extends StatelessWidget {
  const Textfiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        height: 50.h,
        decoration: BoxDecoration(
            color: Colors.grey.shade800,
            borderRadius: BorderRadius.circular(25)),
        child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.search, color: Colors.white),
              Text(
                'Seacrh contacts and places',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              Icon(Icons.mic, color: Colors.white),
              Icon(Icons.more_vert, color: Colors.white)
            ]),
      ),
    );
  }
}
