import 'package:flutter/material.dart';

import '../utils/utils.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
      width: Utils.getWidth(context) / 1,
      height: Utils.getHight(context) / 4,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Image.asset(
            'assets/food.jpg',
            // fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 10,
          ),
          Image.asset(
            'assets/images.jpg',
            // fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 10,
          ),
          Image.asset(
            'assets/restaurent.jpg',
            // fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
