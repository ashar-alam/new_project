import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_size_getter/image_size_getter.dart';
import 'package:new_project/Screens/network_images.dart';
import 'package:new_project/utils/app_style.dart';
import 'package:new_project/utils/string_manager.dart';

class MyFliePickerScreen extends StatefulWidget {
  const MyFliePickerScreen({super.key});

  @override
  State<MyFliePickerScreen> createState() => _MyFilePickerState();
}

class _MyFilePickerState extends State<MyFliePickerScreen> {
  FilePickerResult? result;
  String? fileName;
  bool isLoading = false;
  PlatformFile? pickedfile;
  Uint8List? fileToDisplay;

  void pickFile() async {
    try {
      // setState(()  {
      //   isLoading = true;
      // });

      result = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        type: FileType.any,
      );
      if (result != null) {
        fileName = result!.files.first.name;
        // print(fileName);
        pickedfile = result!.files.first;
        // print("hello");
        fileToDisplay = pickedfile!.bytes!;
        foo(pickedfile!.bytes!);
        print("ashar");
        print("File Name $fileName");
        
      }

      setState(() {
        isLoading = false;
      });
    } catch (e) {
      print(e);
    }
  }

  void foo(Uint8List image){
  final memoryImageSize = ImageSizeGetter.getSize(MemoryInput(image));
  print('memoryImageSize = ${memoryImageSize}');
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppStyle.white,
        centerTitle: true,
        title: const Text(
          StringManager.filePicker,
          style: TextStyle(color: AppStyle.black),
        ),
        iconTheme: const IconThemeData(color: AppStyle.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (pickedfile != null)
              Container(
                decoration: const BoxDecoration(color: AppStyle.orange),
                // width: 300,
                // height: 400,
                child: Image.memory(fileToDisplay!),
              ),
            Center(
              child: isLoading
                  ? const CircularProgressIndicator()
                  : ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: AppStyle.red),
                      onPressed: () {
                        pickFile();
                      },
                      child: const Text(StringManager.pickFile),
                    ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: AppStyle.red),
              onPressed: () {
                // pickFile();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MyNetorkImages()));
              },
              child: const Text(StringManager.nextPage),
            ),
          ],
        ),
      ),
    );
  }
}
