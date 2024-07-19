import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:maintenance_service_app/common/color_extension.dart';
import 'package:maintenance_service_app/common/extension.dart';

class ImagePickerScreen extends StatefulWidget {
  final Function(String) didSelect;
  const ImagePickerScreen({super.key, required this.didSelect});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  final picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * 0.9,
      height: context.width * 0.7,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(color: Colors.black12, blurRadius: 4, spreadRadius: 4)
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Image Picker",
            style: TextStyle(
              color: TColor.primaryText,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    getImageCamera();
                  },
                  child: Icon(
                    Icons.camera_alt,
                    size: 100,
                    color: TColor.primaryText,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    getImageGallery();
                  },
                  child: Icon(
                    Icons.image,
                    size: 100,
                    color: TColor.primaryText,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Take Photo",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 17,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  "Gallery",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 17,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  context.pop();
                },
                child: const Text(
                  "Close",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Future getImageCamera() async {
    try {
      final pickedFile = await picker.pickImage(source: ImageSource.camera);
      if (pickedFile != null) {
        widget.didSelect(pickedFile.path);
      }
      context.pop();
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future getImageGallery() async {
    try {
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        widget.didSelect(pickedFile.path);
      }
      context.pop();
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
