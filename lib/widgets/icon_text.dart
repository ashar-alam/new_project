import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/app_style.dart';

class MyIconText extends StatelessWidget {
  const MyIconText({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 70,
                  width: 70,
                  child: Card(
                    elevation: 5,
                    color: AppStyle.red,
                    child: Image.asset("assets/icon/images.png"),
                    // child: Image(image: (entries.index),)
                  ),
                ),
                VerticalDivider(),
                 SizedBox(
                  height: 70,
                  width: 70,
                  child: Card(
                    elevation: 5,
                    color: AppStyle.red,
                    child: Image.asset("assets/icon/images.png"),
                    // child: Image(image: (entries.index),)
                  ),
                ),
                 VerticalDivider(),
                 SizedBox(
                  height: 70,
                  width: 70,
                  child: Card(
                    elevation: 5,
                    color: AppStyle.red,
                    child: Image.asset("assets/icon/images.png"),
                    // child: Image(image: (entries.index),)
                  ),
                ),
                 VerticalDivider(),
                 SizedBox(
                  height: 70,
                  width: 70,
                  child: Card(
                    elevation: 5,
                    color: AppStyle.red,
                    child: Image.asset("assets/icon/images.png"),
                    // child: Image(image: (entries.index),)
                  ),
                ),
                 VerticalDivider(),
                 SizedBox(
                  height: 70,
                  width: 70,
                  child: Card(
                    elevation: 5,
                    color: AppStyle.red,
                    child: Image.asset("assets/icon/images.png"),
                    // child: Image(image: (entries.index),)
                  ),
                ),
                 VerticalDivider(),
                 SizedBox(
                  height: 70,
                  width: 70,
                  child: Card(
                    elevation: 5,
                    color: AppStyle.red,
                    child: Image.asset("assets/icon/images.png"),
                    // child: Image(image: (entries.index),)
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
