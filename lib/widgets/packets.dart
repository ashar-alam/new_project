import 'package:flutter/material.dart';
import 'package:new_project/utils/string_manager.dart';

import '../utils/app_style.dart';
import '../utils/utils.dart';

class MyPackets extends StatelessWidget {
  const MyPackets({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Utils.getWidth(context) / 2,
      height: 200,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            SizedBox(
                width: Utils.getWidth(context) / 2,
                height: 100,
                child: Image.asset("assets/image.jpg")),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    StringManager.friedNoddles,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const Text(
                    StringManager.mcDonald,
                    style: TextStyle(fontSize: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        StringManager.price,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        StringManager.rating,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20,color: AppStyle.red),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
