import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:new_project/utils/utils.dart';



class MyImageSlider extends StatelessWidget {
  const MyImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return 
       Scaffold(
        // appBar: AppBar(
        //   title: Text('Demo'),
        // ),
        body: ImageSlideshow(
          width: Utils.getWidth(context)/1.5,
          height: 100,
          initialPage: 0,
          indicatorColor: Colors.blue,
          indicatorBackgroundColor: Colors.grey,
          onPageChanged: (value) {
            print('Page changed: $value');
          },
          autoPlayInterval: 3000,
          isLoop: true,
          children: [
            Image.asset(
              'assets/food.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/restaurent.jpg',
              fit: BoxFit.cover,
            ),
          ],
        ),
      
    );
  }
}
