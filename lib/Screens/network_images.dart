// import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_size_getter/image_size_getter.dart';
import 'package:new_project/utils/app_style.dart';

import '../utils/string_manager.dart';

class MyNetorkImages extends StatefulWidget {
  const MyNetorkImages({super.key});

  @override
  State<MyNetorkImages> createState() => _MyNetorkImagesState();
}

class _MyNetorkImagesState extends State<MyNetorkImages> {
  void foo(Uint8List image){
  final memoryImageSize = ImageSizeGetter.getSize(MemoryInput(image));
  print('memoryImageSize = $memoryImageSize');
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppStyle.white,
        centerTitle: true,
        title: const Text(StringManager.networkImages, style: TextStyle(color: AppStyle.black),
        ),
        iconTheme: const IconThemeData(color: AppStyle.black),
      ),
      // body: Card(child: Column(children: [foo("image")],)),
    );
  }
}
