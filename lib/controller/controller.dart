import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class Controller extends GetxController {
  RxInt currentIndex = 0.obs;

  Rx<File>? image;
  late final Rx<ImagePicker?> picker;
}
