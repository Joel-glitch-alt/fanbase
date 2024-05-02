import 'dart:io';
import 'package:fanbase/Screens/artist_media_upload/upload_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  Future<void> getVideoFile(ImageSource sourceImg) async {
    final videoFile = await ImagePicker().pickVideo(source: sourceImg);

    if (videoFile != null) {
      Get.to(
        UploadForm(
          videoFile: File(videoFile.path),
          videoPath: videoFile.path,
        ),
      );
    }
  }

  Future<void> displayDialogBox() async {
    await showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        children: [
          SimpleDialogOption(
            onPressed: () {
              getVideoFile(ImageSource.gallery);
            },
            child: const Row(
              children: [
                Icon(Icons.image),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Get Video from Phone Gallery",
                      maxLines: 3,
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SimpleDialogOption(
            onPressed: () {
              getVideoFile(ImageSource.camera);
            },
            child: const Row(
              children: [
                Icon(
                  Icons.camera_alt,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Make Video with Phone Camera",
                      maxLines: 3,
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SimpleDialogOption(
            onPressed: () {
              Get.back();
            },
            child: const Row(
              children: [
                Icon(
                  Icons.cancel_outlined,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Cancel",
                      maxLines: 3,
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          displayDialogBox();
        },
        backgroundColor: Colors.blue,
        icon: Icon(Icons.upload_rounded),
        label: const Text(
          "Upload New Video",
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
