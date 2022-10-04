import 'package:flutter/material.dart';
import 'package:new_project/utils/app_style.dart';
import 'package:new_project/utils/utils.dart';

class MylistViewBuilder extends StatelessWidget {
  final List<String> entries = <String>['assets/icon/inages.jpg', 'assets/icon/inages.png', 'assets/icon/inages(1).jpg','a','b','d'];
  final List<String> name = <String>['Burger', 'french fries', 'pizza ','cold drink','pasta','Ice cream'];
  MylistViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Utils.getWidth(context),
      height: Utils.getHight(context) / 5,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              const SizedBox(
                height: 70,
                width: 70,
                child: Card(
                  elevation: 5,
                  color: AppStyle.red,
                  // child: Image(image: (entries.index),)
                ),
              ),
              const SizedBox(height: 10,),
              Text(name[index])
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) =>
            const VerticalDivider(),
      ),
    );
  }
}
